import 'package:ffmpeg_kit_flutter_new/ffmpeg_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart' show MediaType;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import '../../data/models/chat_message.dart';
import '../../data/models/conversation.dart';
import 'chat_event.dart';
import 'chat_state.dart';
import '../../core/network/api_client.dart';
import '../../core/services/voice_recorder_service.dart';
import 'package:uuid/uuid.dart';

/// Chat BLoC – manages messages & conversations.
///
/// Uses the generated API service for chat interactions.
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ApiClient _apiClient = ApiClient();
  final VoiceRecorderService _voiceRecorderService = VoiceRecorderService();

  ChatBloc() : super(const ChatState()) {
    on<ChatSendMessage>(_onSendMessage);
    on<ChatStartNewConversation>(_onStartNew);
    on<ChatLoadConversations>(_onLoadConversations);
    on<ChatLoadConversation>(_onLoadConversation);
    on<ChatDeleteConversation>(_onDeleteConversation);
    on<ChatStopGenerating>(_onStopGenerating);
    on<ChatClearMessages>(_onClearMessages);
    on<ChatRetryLastMessage>(_onRetryLastMessage);
    on<ChatStartRecording>(_onStartRecording);
    on<ChatStopRecording>(_onStopRecording);
    on<ChatCancelRecording>(_onCancelRecording);
    on<ChatSendVoiceMessage>(_onSendVoiceMessage);

    // Initial load of history
    add(ChatLoadConversations());
  }

  int _msgCounter = 0;
  int _convCounter = 0;

  String _nextMsgId() => 'msg_${++_msgCounter}';
  String _nextConvId() => 'conv_${++_convCounter}';

  // ────────────────────────────────────────────────────────────────
  Future<void> _onSendMessage(
    ChatSendMessage event,
    Emitter<ChatState> emit,
  ) async {
    
    final userMsg = ChatMessage(
      id: _nextMsgId(),
      content: event.content,
      role: MessageRole.user,
      timestamp: DateTime.now(),
    );

    emit(
      state.copyWith(
        messages: [...state.messages, userMsg],
        isGenerating: true,
        errorMessage: null,
      ),
    );

    try {
      var conversations = List<Conversation>.from(state.conversations);
      var activeId = state.activeConversationId;

      // If no active conversation, initialize one via API.
      if (activeId == null) {
        activeId = Uuid().v4();

        // Initialize conversation on the backend
        try {
          await _apiClient.aiAgent.initializeANewConversation({'id': activeId});
        } catch (e) {
          debugPrint('Failed to init conversation: $e');
        }

        final newConv = Conversation(
          id: activeId,
          title: event.content.length > 40
              ? '${event.content.substring(0, 40)}…'
              : event.content,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        );
        conversations.insert(0, newConv);

        emit(
          state.copyWith(
            conversations: conversations,
            activeConversationId: activeId,
          ),
        );
      }

      // Call the generated Chopper endpoint to chat with AI agent
      final requestPayload = {
        'message': event.content,
        'conversationId': activeId,
      };

      print('>>> CHAT REQUEST: $requestPayload');

      final response = await _apiClient.aiAgent.chatWithMrMoneiAiAgent(
        requestPayload,
      );

      print('<<< CHAT RESPONSE STATUS: ${response.statusCode}');
      print('<<< CHAT RESPONSE BODY: ${response.bodyString}');

      String botReply = "Failed to get response.";

      if (response.isSuccessful) {
        final Map<String, dynamic>? bodyData = response.body is Map
            ? response.body as Map<String, dynamic>
            : null;

        if (bodyData != null) {
          final data = bodyData['data'];
          if (data is Map && data['reply'] != null) {
            botReply = data['reply'];
          } else if (data is Map && data['response'] != null) {
            botReply = data['response'];
          } else if (bodyData['response'] != null) {
            botReply = bodyData['response'];
          } else if (bodyData['message'] != null) {
            botReply = bodyData['message'];
          }
        }
      } else {
        botReply = "Error from server: ${response.statusCode}";
        print("Chat Error Response Body: ${response.bodyString}");
        print("Chat Error Status Code: ${response.statusCode}");
      }

      final botMsg = ChatMessage(
        id: _nextMsgId(),
        content: botReply,
        role: MessageRole.assistant,
        timestamp: DateTime.now(),
      );

      emit(
        state.copyWith(
          messages: [...state.messages, botMsg],
          isGenerating: false,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isGenerating: false,
          errorMessage: 'Failed to get response. Tap to retry.',
        ),
      );
    }
  }

  // ────────────────────────────────────────────────────────────────
  Future<void> _onStartNew(
    ChatStartNewConversation event,
    Emitter<ChatState> emit,
  ) async {
    final activeId = Uuid().v4();

    // Initialize conversation on the backend
    try {
      await _apiClient.aiAgent.initializeANewConversation({'id': activeId});
    } catch (e) {
      debugPrint('Failed to init conversation: $e');
    }

    final newConv = Conversation(
      id: activeId,
      title: 'New Chat',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    var conversations = List<Conversation>.from(state.conversations);
    conversations.insert(0, newConv);

    emit(
      state.copyWith(
        messages: [],
        activeConversationId: activeId,
        conversations: conversations,
        isGenerating: false,
        errorMessage: null,
      ),
    );
  }

  // ────────────────────────────────────────────────────────────────
  Future<void> _onLoadConversations(
    ChatLoadConversations event,
    Emitter<ChatState> emit,
  ) async {
    try {
      final response = await _apiClient.aiAgent.getAllConversations();
      if (response.isSuccessful) {
        List data = [];
        if (response.body is List) {
          data = response.body as List;
        } else if (response.body is Map && response.body['data'] is List) {
          data = response.body['data'] as List;
        }

        final conversations = data.map((c) {
          return Conversation(
            id: c['id'] ?? _nextConvId(),
            title: c['title'] ?? 'New Chat',
            createdAt: c['createdAt'] != null
                ? DateTime.parse(c['createdAt'])
                : DateTime.now(),
            updatedAt: c['updatedAt'] != null
                ? DateTime.parse(c['updatedAt'])
                : DateTime.now(),
          );
        }).toList();

        emit(state.copyWith(conversations: conversations));
      }
    } catch (e) {
      // Failed to load existing conversations
    }
  }

  // ────────────────────────────────────────────────────────────────
  Future<void> _onLoadConversation(
    ChatLoadConversation event,
    Emitter<ChatState> emit,
  ) async {
    emit(
      state.copyWith(
        activeConversationId: event.conversationId,
        messages: [],
        isGenerating: true,
        errorMessage: null,
      ),
    );

    try {
      final response = await _apiClient.aiAgent.getConversationMessages(
        event.conversationId,
      );
      if (response.isSuccessful) {
        List data = [];
        if (response.body is List) {
          data = response.body as List;
        } else if (response.body is Map && response.body['data'] is List) {
          data = response.body['data'] as List;
        }

        final loadedMessages = data.map((m) {
          return ChatMessage(
            id: m['id'] ?? _nextMsgId(),
            content: m['content'] ?? m['text'] ?? '',
            role: m['role'] == 'user'
                ? MessageRole.user
                : MessageRole.assistant,
            timestamp: m['timestamp'] != null
                ? DateTime.parse(m['timestamp'])
                : DateTime.now(),
          );
        }).toList();

        emit(state.copyWith(messages: loadedMessages, isGenerating: false));
      } else {
        emit(
          state.copyWith(
            isGenerating: false,
            errorMessage: 'Failed to load conversation messages.',
          ),
        );
      }
    } catch (e) {
      emit(state.copyWith(isGenerating: false, errorMessage: e.toString()));
    }
  }

  // ────────────────────────────────────────────────────────────────
  Future<void> _onDeleteConversation(
    ChatDeleteConversation event,
    Emitter<ChatState> emit,
  ) async {
    final updated = state.conversations
        .where((c) => c.id != event.conversationId)
        .toList();
    final isActive = state.activeConversationId == event.conversationId;
    emit(
      state.copyWith(
        conversations: updated,
        activeConversationId: isActive ? null : state.activeConversationId,
        messages: isActive ? [] : state.messages,
      ),
    );

    // Call API to delete conversation asynchronously
    try {
      await _apiClient.aiAgent.deleteConversation(event.conversationId);
    } catch (e) {
      // ignore
    }
  }

  // ────────────────────────────────────────────────────────────────
  void _onStopGenerating(ChatStopGenerating event, Emitter<ChatState> emit) {
    emit(state.copyWith(isGenerating: false));
  }

  // ────────────────────────────────────────────────────────────────
  void _onClearMessages(ChatClearMessages event, Emitter<ChatState> emit) {
    emit(state.copyWith(messages: [], activeConversationId: null));
  }

  // ────────────────────────────────────────────────────────────────
  Future<void> _onRetryLastMessage(
    ChatRetryLastMessage event,
    Emitter<ChatState> emit,
  ) async {
    if (state.messages.isEmpty) return;
    final lastUserMsg = state.messages.lastWhere(
      (m) => m.role == MessageRole.user,
      orElse: () => state.messages.last,
    );
    add(ChatSendMessage(content: lastUserMsg.content));
  }

  // (Dummy reply method removed since real API is used)

  // ────────────────────────────────────────────────────────────────
  Future<void> _onStartRecording(
    ChatStartRecording event,
    Emitter<ChatState> emit,
  ) async {
    final path = await _voiceRecorderService.startRecording();
    if (path != null) {
      emit(state.copyWith(isRecording: true));
    } else {
      emit(
        state.copyWith(
          errorMessage:
              'Failed to start recording. Please grant microphone permission.',
        ),
      );
    }
  }

  Future<void> _onStopRecording(
    ChatStopRecording event,
    Emitter<ChatState> emit,
  ) async {
    final path = await _voiceRecorderService.stopRecording();
    emit(state.copyWith(isRecording: false));
    if (path != null) {
      add(ChatSendVoiceMessage(audioPath: path));
    }
  }

// Add this helper method inside ChatBloc:
Future<String> _convertToM4a(String inputPath) async {
  // If already m4a, return as-is
  if (inputPath.toLowerCase().endsWith('.m4a')) return inputPath;

  final dir = await getTemporaryDirectory();
  final outputPath = '${dir.path}/voice_${DateTime.now().millisecondsSinceEpoch}.m4a';

  final session = await FFmpegKit.execute(
    '-i "$inputPath" -c:a aac -b:a 128k "$outputPath" -y',
  );

  final returnCode = await session.getReturnCode();
  if (returnCode?.isValueSuccess() == true) {
    return outputPath;
  } else {
    debugPrint('FFmpeg conversion failed, using original file');
    return inputPath; // fallback to original
  }
}
  Future<void> _onCancelRecording(
    ChatCancelRecording event,
    Emitter<ChatState> emit,
  ) async {
    await _voiceRecorderService.stopRecording(); // discard file
    emit(state.copyWith(isRecording: false));
  }

  Future<void> _onSendVoiceMessage(
    ChatSendVoiceMessage event,
    Emitter<ChatState> emit,
  ) async {
    final userMsg = ChatMessage(
      id: _nextMsgId(),
      content: '🎵 Voice Message', // Placeholder text for UI
      role: MessageRole.user,
      timestamp: DateTime.now(),
    );

    emit(
      state.copyWith(
        messages: [...state.messages, userMsg],
        isGenerating: true,
        errorMessage: null,
      ),
    );

    try {
      var conversations = List<Conversation>.from(state.conversations);
      var activeId = state.activeConversationId;

      if (activeId == null) {
        activeId = Uuid().v4();

        // Initialize conversation on the backend
        try {
          await _apiClient.aiAgent.initializeANewConversation({'id': activeId});
        } catch (e) {
          debugPrint('Failed to init conversation: $e');
        }

        final newConv = Conversation(
          id: activeId,
          title: 'Voice Chat',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        );
        conversations.insert(0, newConv);
        emit(
          state.copyWith(
            conversations: conversations,
            activeConversationId: activeId,
          ),
        );
      }

      // Output exactly what is being passed and sent to the backend
      print('====================================================');
      print('🎙️ VOICE CHAT REQUEST BODY');
      print('▶ conversationId: $activeId');
      print('▶ audio (file path): ${event.audioPath}');
      print('====================================================');

      // Create multipart file from path
      final m4aPath = await _convertToM4a(event.audioPath);

  final audioFile = await http.MultipartFile.fromPath(
    'audio',
    m4aPath,
    contentType: MediaType('audio', 'x-m4a'),  // ✅ Correct content type
  );
// final audioFile = await http.MultipartFile.fromPath(
//         'audio',
//         event.audioPath,
//         contentType: MediaType('audio', 'x-m4a'), // ✅ Matches swagger
//       );

      print('📦 MULTIPART FILE DETAILS:');
      print('▶ field: ${audioFile.field}');
      print('▶ filename: ${audioFile.filename}');
      print('▶ contentType: ${audioFile.contentType}');
      print('▶ length: ${audioFile.length} bytes');
      print('====================================================');

      // Send voice via multipart POST
      final response = await _apiClient.aiAgent.voiceChatWithAiAgent(
        conversationId: activeId,
        audioFile: audioFile,
      );

      print('📥 VOICE CHAT RESPONSE:');
      print('▶ statusCode: ${response.statusCode}');
      print('▶ body: ${response.bodyString}');
      print('====================================================');

      String botReply = "Failed to get response.";
      if (response.isSuccessful) {
        final Map<String, dynamic>? bodyData = response.body is Map
            ? response.body as Map<String, dynamic>
            : null;

        if (bodyData != null) {
          final data = bodyData['data'];
          if (data is Map && data['reply'] != null) {
            botReply = data['reply'];
          } else if (data is Map && data['response'] != null) {
            botReply = data['response'];
          } else if (bodyData['response'] != null) {
            botReply = bodyData['response'];
          } else if (bodyData['message'] != null) {
            botReply = bodyData['message'];
          }
        }
      } else {
        botReply = "Error from server: \${response.statusCode}";
      }

      final botMsg = ChatMessage(
        id: _nextMsgId(),
        content: botReply,
        role: MessageRole.assistant,
        timestamp: DateTime.now(),
      );

      emit(
        state.copyWith(
          messages: [...state.messages, botMsg],
          isGenerating: false,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isGenerating: false,
          errorMessage: 'Failed to send voice message.',
        ),
      );
    }
  }

  @override
  Future<void> close() {
    _voiceRecorderService.dispose();
    return super.close();
  }
}
