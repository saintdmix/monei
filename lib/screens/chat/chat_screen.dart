import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/auth/auth_bloc.dart';
import '../../bloc/auth/auth_event.dart';
import '../../bloc/auth/auth_state.dart';
import '../../bloc/chat/chat_bloc.dart';
import '../../bloc/chat/chat_event.dart';
import '../../bloc/chat/chat_state.dart';
import '../../components/chat/chat_bubble.dart';
import '../../components/chat/chat_input_bar.dart';
import '../../components/chat/conversation_drawer.dart';
import '../../components/chat/empty_chat_state.dart';
import '../../components/chat/typing_indicator.dart';
import '../../components/common/glass_app_bar.dart';
import '../../core/theme/app_colors_extension.dart';
import '../../main.dart';
import '../auth/login_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _scrollController = ScrollController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void _sendMessage(String content) {
    context.read<ChatBloc>().add(ChatSendMessage(content: content));
    _scrollToBottom();
  }

  @override
  Widget build(BuildContext context) {
    final authState = context.watch<AuthBloc>().state;
    final userName = authState is AuthAuthenticated
        ? authState.user.name
        : 'User';
    final colors = context.appColors;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: colors.background,
      appBar: GlassAppBar(
        title: 'Mr Monei',
        onMenuPressed: () => _scaffoldKey.currentState?.openDrawer(),
        actions: [
          // Theme toggle button
          IconButton(
            onPressed: () => context.themeCubit.toggleTheme(),
            icon: Icon(
              context.themeCubit.isDark
                  ? Icons.light_mode_rounded
                  : Icons.dark_mode_rounded,
              color: colors.textSecondary,
              size: 20,
            ),
            tooltip: 'Toggle theme',
          ),
          // New Chat button
          IconButton(
            onPressed: () =>
                context.read<ChatBloc>().add(ChatStartNewConversation()),
            icon: Icon(
              Icons.edit_square,
              color: colors.textSecondary,
              size: 20,
            ),
            tooltip: 'New Chat',
          ),
        ],
      ),
      drawer: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, chatState) {
          return ConversationDrawer(
            conversations: chatState.conversations,
            activeConversationId: chatState.activeConversationId,
            userName: userName,
            onNewChat: () =>
                context.read<ChatBloc>().add(ChatStartNewConversation()),
            onSelectConversation: (id) => context.read<ChatBloc>().add(
              ChatLoadConversation(conversationId: id),
            ),
            onDeleteConversation: (id) => context.read<ChatBloc>().add(
              ChatDeleteConversation(conversationId: id),
            ),
            onLogout: () {
              context.read<AuthBloc>().add(AuthLogoutRequested());
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (_) => const LoginScreen()),
                (route) => false,
              );
            },
          );
        },
      ),
      body: Container(
        decoration: BoxDecoration(gradient: colors.backgroundGradient),
        child: Column(
          children: [
            Expanded(
              child: BlocConsumer<ChatBloc, ChatState>(
                listener: (context, state) {
                  _scrollToBottom();
                },
                builder: (context, state) {
                  if (state.messages.isEmpty) {
                    return EmptyChatState(
                      userName: userName,
                      onSuggestionTap: _sendMessage,
                    );
                  }

                  return ListView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.only(top: 16, bottom: 8),
                    itemCount:
                        state.messages.length + (state.isGenerating ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index == state.messages.length &&
                          state.isGenerating) {
                        return const TypingIndicator();
                      }
                      return ChatBubble(message: state.messages[index]);
                    },
                  );
                },
              ),
            ),
            BlocBuilder<ChatBloc, ChatState>(
              builder: (context, state) {
                return ChatInputBar(
                  onSend: _sendMessage,
                  isGenerating: state.isGenerating,
                  isRecording: state.isRecording,
                  onStopGenerating: () =>
                      context.read<ChatBloc>().add(ChatStopGenerating()),
                  onStartRecording: () =>
                      context.read<ChatBloc>().add(ChatStartRecording()),
                  onStopRecording: () =>
                      context.read<ChatBloc>().add(ChatStopRecording()),
                  onCancelRecording: () =>
                      context.read<ChatBloc>().add(ChatCancelRecording()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
