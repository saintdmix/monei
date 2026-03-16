import 'package:equatable/equatable.dart';

/// Chat events.
abstract class ChatEvent extends Equatable {
  const ChatEvent();

  @override
  List<Object?> get props => [];
}

class ChatSendMessage extends ChatEvent {
  final String content;

  const ChatSendMessage({required this.content});

  @override
  List<Object?> get props => [content];
}

class ChatStartNewConversation extends ChatEvent {}

class ChatLoadConversations extends ChatEvent {}

class ChatLoadConversation extends ChatEvent {
  final String conversationId;

  const ChatLoadConversation({required this.conversationId});

  @override
  List<Object?> get props => [conversationId];
}

class ChatDeleteConversation extends ChatEvent {
  final String conversationId;

  const ChatDeleteConversation({required this.conversationId});

  @override
  List<Object?> get props => [conversationId];
}

class ChatStopGenerating extends ChatEvent {}

class ChatClearMessages extends ChatEvent {}

class ChatRetryLastMessage extends ChatEvent {}

class ChatStartRecording extends ChatEvent {}

class ChatStopRecording extends ChatEvent {}

class ChatCancelRecording extends ChatEvent {}

class ChatSendVoiceMessage extends ChatEvent {
  final String audioPath;

  const ChatSendVoiceMessage({required this.audioPath});

  @override
  List<Object?> get props => [audioPath];
}
