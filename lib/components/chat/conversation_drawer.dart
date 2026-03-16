import 'package:flutter/material.dart';
import '../../core/constants/app_styles.dart';
import '../../core/theme/app_colors_extension.dart';
import '../../data/models/conversation.dart';
import '../../core/utils/utils.dart';
import '../../screens/wallet/wallet_screen.dart';
import '../../screens/profile/profile_screen.dart';

/// Sidebar / drawer showing conversation history.
class ConversationDrawer extends StatelessWidget {
  final List<Conversation> conversations;
  final String? activeConversationId;
  final VoidCallback onNewChat;
  final ValueChanged<String> onSelectConversation;
  final ValueChanged<String> onDeleteConversation;
  final VoidCallback onLogout;
  final String userName;

  const ConversationDrawer({
    super.key,
    required this.conversations,
    required this.activeConversationId,
    required this.onNewChat,
    required this.onSelectConversation,
    required this.onDeleteConversation,
    required this.onLogout,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return Drawer(
      backgroundColor: colors.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            // ── Header ──
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/images/logo.png',
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text('Mr Monei', style: AppStyles.h4(context)),
                  ),
                ],
              ),
            ),
            // ── New Chat Button ──
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    onNewChat();
                    Navigator.pop(context);
                  },
                  borderRadius: BorderRadius.circular(14),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                    decoration: BoxDecoration(
                      gradient: colors.primaryGradient,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.add_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                        const SizedBox(width: 10),
                        Text('New Chat', style: AppStyles.buttonTextSmall),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // ── Wallet Navigation Button ──
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Material(
                color: colors.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(14),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context); // Close drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const WalletScreen()),
                    );
                  },
                  borderRadius: BorderRadius.circular(14),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: colors.primary.withOpacity(0.3),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_balance_wallet_rounded,
                          color: colors.primary,
                          size: 20,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'My Wallet',
                          style: AppStyles.buttonTextSmall.copyWith(
                            color: colors.primary,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: colors.primary.withOpacity(0.5),
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recent Chats',
                  style: AppStyles.labelSmall(context),
                ),
              ),
            ),
            const SizedBox(height: 8),
            // ── Conversation list ──
            Expanded(
              child: conversations.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.chat_bubble_outline_rounded,
                            color: colors.textHint,
                            size: 40,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'No conversations yet',
                            style: AppStyles.bodySmall(context),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      itemCount: conversations.length,
                      itemBuilder: (context, index) {
                        final conv = conversations[index];
                        final isActive = conv.id == activeConversationId;
                        return _ConversationTile(
                          conversation: conv,
                          isActive: isActive,
                          onTap: () {
                            onSelectConversation(conv.id);
                            Navigator.pop(context);
                          },
                          onDelete: () => onDeleteConversation(conv.id),
                        );
                      },
                    ),
            ),
            Divider(color: colors.divider, height: 1),
            // ── Footer ──
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context); // close drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ProfileScreen()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: colors.surfaceElevated,
                        child: Text(
                          userName.isNotEmpty ? userName[0].toUpperCase() : '?',
                          style: AppStyles.bodyMedium(context).copyWith(
                            color: colors.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          userName,
                          style: AppStyles.bodyMedium(context),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      IconButton(
                        onPressed: onLogout,
                        icon: Icon(
                          Icons.logout_rounded,
                          color: colors.textHint,
                          size: 20,
                        ),
                        tooltip: 'Sign out',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ConversationTile extends StatelessWidget {
  final Conversation conversation;
  final bool isActive;
  final VoidCallback onTap;
  final VoidCallback onDelete;

  const _ConversationTile({
    required this.conversation,
    required this.isActive,
    required this.onTap,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Material(
        color: isActive
            ? colors.primary.withValues(alpha: 0.12)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              children: [
                Icon(
                  Icons.chat_bubble_outline_rounded,
                  size: 16,
                  color: isActive ? colors.primary : colors.textHint,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        conversation.title,
                        style: AppStyles.bodySmall(context).copyWith(
                          color: isActive
                              ? colors.textPrimary
                              : colors.textSecondary,
                          fontWeight: isActive
                              ? FontWeight.w500
                              : FontWeight.w400,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        AppUtils.formatMessageTime(conversation.updatedAt),
                        style: AppStyles.chatTimestamp(context),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: onDelete,
                  child: Icon(
                    Icons.delete_outline_rounded,
                    size: 16,
                    color: colors.textHint,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
