import 'package:flutter/material.dart';
import '../../core/constants/app_styles.dart';
import '../../core/theme/app_colors_extension.dart';

/// The message input bar at the bottom of the chat screen.
class ChatInputBar extends StatefulWidget {
  final ValueChanged<String> onSend;
  final VoidCallback? onStopGenerating;
  final VoidCallback? onStartRecording;
  final VoidCallback? onStopRecording;
  final VoidCallback? onCancelRecording;
  final bool isGenerating;
  final bool isRecording;

  const ChatInputBar({
    super.key,
    required this.onSend,
    this.onStopGenerating,
    this.onStartRecording,
    this.onStopRecording,
    this.onCancelRecording,
    this.isGenerating = false,
    this.isRecording = false,
  });

  @override
  State<ChatInputBar> createState() => _ChatInputBarState();
}

class _ChatInputBarState extends State<ChatInputBar>
    with SingleTickerProviderStateMixin {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  bool _hasText = false;

  late AnimationController _animController;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final hasNow = _controller.text.trim().isNotEmpty;
      if (hasNow != _hasText) setState(() => _hasText = hasNow);
    });
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
  }

  @override
  void didUpdateWidget(covariant ChatInputBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_hasText || widget.isGenerating || widget.isRecording) {
      _animController.forward();
    } else {
      _animController.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    _animController.dispose();
    super.dispose();
  }

  void _handleSend() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;
    widget.onSend(text);
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return Container(
      padding: EdgeInsets.only(
        left: 16,
        right: 8,
        top: 12,
        bottom: MediaQuery.of(context).padding.bottom + 12,
      ),
      decoration: BoxDecoration(
        color: colors.surface,
        border: Border(top: BorderSide(color: colors.border, width: 0.5)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              constraints: const BoxConstraints(maxHeight: 120),
              decoration: BoxDecoration(
                color: colors.surfaceLight,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: colors.border, width: 0.5),
              ),
              child: TextField(
                controller: _controller,
                focusNode: _focusNode,
                style: AppStyles.inputText(context),
                maxLines: 5,
                minLines: 1,
                cursorColor: colors.primary,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  hintText: 'Ask me anything…',
                  hintStyle: AppStyles.hintText(context),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                ),
                onSubmitted: (_) => _handleSend(),
              ),
            ),
          ),
          const SizedBox(width: 8),
          _buildActionButton(context),
        ],
      ),
    );
  }

  Widget _buildActionButton(BuildContext context) {
    final colors = context.appColors;
    if (widget.isGenerating) {
      return _StopButton(onPressed: widget.onStopGenerating);
    }

    if (widget.isRecording) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Cancel Recording Button
          GestureDetector(
            onTap: widget.onCancelRecording,
            child: Container(
              width: 48,
              height: 48,
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: colors.error.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: colors.error, width: 1),
              ),
              child: Icon(
                Icons.delete_outline_rounded,
                color: colors.error,
                size: 22,
              ),
            ),
          ),
          // Stop/Send Recording Button
          GestureDetector(
            onTap: widget.onStopRecording,
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                gradient: colors.sendButtonGradient,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: colors.primary.withValues(alpha: 0.4),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Icon(
                Icons.stop_rounded,
                color: Colors.white,
                size: 22,
              ),
            ),
          ),
        ],
      );
    }

    // Default Send/Mic Button
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      child: GestureDetector(
        key: ValueKey(_hasText),
        onTap: _hasText ? _handleSend : widget.onStartRecording,
        child: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            gradient: _hasText ? colors.sendButtonGradient : null,
            color: _hasText ? null : colors.surfaceElevated,
            borderRadius: BorderRadius.circular(16),
            boxShadow: _hasText
                ? [
                    BoxShadow(
                      color: colors.primary.withValues(alpha: 0.4),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ]
                : [],
            border: _hasText
                ? null
                : Border.all(color: colors.border, width: 1),
          ),
          child: Icon(
            _hasText ? Icons.arrow_upward_rounded : Icons.mic_rounded,
            color: _hasText ? Colors.white : colors.primary,
            size: 22,
          ),
        ),
      ),
    );
  }
}

class _StopButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const _StopButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: colors.error.withValues(alpha: 0.15),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: colors.error, width: 1),
        ),
        child: Icon(Icons.stop_rounded, color: colors.error, size: 22),
      ),
    );
  }
}
