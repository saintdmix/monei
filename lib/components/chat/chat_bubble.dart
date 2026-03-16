import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import '../../core/constants/app_styles.dart';
import '../../core/theme/app_colors_extension.dart';
import '../../data/models/chat_message.dart';
import '../../core/utils/utils.dart';

/// A single chat bubble — user messages on the right, bot on the left.
class ChatBubble extends StatelessWidget {
  final ChatMessage message;
  final bool showTimestamp;

  const ChatBubble({
    super.key,
    required this.message,
    this.showTimestamp = true,
  });

  bool get _isUser => message.role == MessageRole.user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        mainAxisAlignment: _isUser
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!_isUser) ...[_buildAvatar(context), const SizedBox(width: 8)],
          Flexible(child: _buildBubble(context)),
          if (_isUser) ...[const SizedBox(width: 8)],
        ],
      ),
    );
  }

  Widget _buildAvatar(BuildContext context) {
    final colors = context.appColors;
    return Container(
      width: 32,
      height: 32,
      // decoration: BoxDecoration(
      //   gradient: colors.primaryGradient,
      //   borderRadius: BorderRadius.circular(10),
      // ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'assets/images/logo.png',
          width: 32,
          height: 32,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget _buildBubble(BuildContext context) {
    final colors = context.appColors;
    return Container(
      constraints: const BoxConstraints(maxWidth: 320),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        gradient: _isUser ? colors.sendButtonGradient : null,
        color: _isUser ? null : colors.surfaceLight,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(20),
          topRight: const Radius.circular(20),
          bottomLeft: Radius.circular(_isUser ? 20 : 4),
          bottomRight: Radius.circular(_isUser ? 4 : 20),
        ),
        border: _isUser ? null : Border.all(color: colors.border, width: 0.5),
        boxShadow: [
          BoxShadow(
            color: _isUser
                ? colors.primary.withValues(alpha: 0.2)
                : Colors.black.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MarkdownBody(
            data: message.content,
            selectable: true,
            styleSheet: MarkdownStyleSheet(
              p: AppStyles.chatMessage(
                context,
              ).copyWith(color: _isUser ? Colors.white : colors.textPrimary),
              listBullet: TextStyle(
                color: _isUser ? Colors.white : colors.textPrimary,
              ),
              strong: TextStyle(
                fontWeight: FontWeight.w700,
                color: _isUser ? Colors.white : colors.textPrimary,
              ),
            ),
          ),
          if (showTimestamp) ...[
            const SizedBox(height: 6),
            Text(
              AppUtils.formatMessageTime(message.timestamp),
              style: AppStyles.chatTimestamp(context).copyWith(
                color: _isUser
                    ? Colors.white.withValues(alpha: 0.7)
                    : colors.textHint,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
