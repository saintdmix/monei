import 'package:equatable/equatable.dart';
import '../../data/models/chat_message.dart';
import '../../data/models/conversation.dart';

/// Chat states.
class ChatState extends Equatable {
  final List<ChatMessage> messages;
  final List<Conversation> conversations;
  final String? activeConversationId;
  final bool isGenerating;
  final bool isRecording;
  final String? errorMessage;

  const ChatState({
    this.messages = const [],
    this.conversations = const [],
    this.activeConversationId,
    this.isGenerating = false,
    this.isRecording = false,
    this.errorMessage,
  });

  ChatState copyWith({
    List<ChatMessage>? messages,
    List<Conversation>? conversations,
    String? activeConversationId,
    bool? isGenerating,
    bool? isRecording,
    String? errorMessage,
  }) {
    return ChatState(
      messages: messages ?? this.messages,
      conversations: conversations ?? this.conversations,
      activeConversationId: activeConversationId ?? this.activeConversationId,
      isGenerating: isGenerating ?? this.isGenerating,
      isRecording: isRecording ?? this.isRecording,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [
    messages,
    conversations,
    activeConversationId,
    isGenerating,
    isRecording,
    errorMessage,
  ];
}
