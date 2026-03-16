import 'package:flutter/material.dart';
import '../../core/constants/app_styles.dart';
import '../../core/theme/app_colors_extension.dart';

/// Empty state widget shown when there are no messages yet.
class EmptyChatState extends StatelessWidget {
  final String userName;
  final ValueChanged<String>? onSuggestionTap;

  const EmptyChatState({
    super.key,
    required this.userName,
    this.onSuggestionTap,
  });

  static const _suggestions = [
    SuggestionItem(
      icon: Icons.lightbulb_outline_rounded,
      title: 'Brainstorm ideas',
      subtitle: 'for a new project or business',
    ),
    SuggestionItem(
      icon: Icons.code_rounded,
      title: 'Help me code',
      subtitle: 'debug, explain, or write code',
    ),
    SuggestionItem(
      icon: Icons.edit_note_rounded,
      title: 'Write content',
      subtitle: 'emails, essays, or social media',
    ),
    SuggestionItem(
      icon: Icons.psychology_outlined,
      title: 'Analyze & explain',
      subtitle: 'complex topics made simple',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: colors.primary.withValues(alpha: 0.3),
                  blurRadius: 30,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                'assets/images/logo.png',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Hello, $userName!',
            style: AppStyles.h2(context),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'How can I assist you today?',
            style: AppStyles.bodyLarge(
              context,
            ).copyWith(color: colors.textSecondary),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 1.35,
            ),
            itemCount: _suggestions.length,
            itemBuilder: (context, index) {
              final item = _suggestions[index];
              return _SuggestionCard(
                item: item,
                onTap: () => onSuggestionTap?.call(item.title),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SuggestionItem {
  final IconData icon;
  final String title;
  final String subtitle;

  const SuggestionItem({
    required this.icon,
    required this.title,
    required this.subtitle,
  });
}

class _SuggestionCard extends StatelessWidget {
  final SuggestionItem item;
  final VoidCallback onTap;

  const _SuggestionCard({required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        splashColor: colors.primary.withValues(alpha: 0.1),
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: colors.surfaceLight,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: colors.border, width: 0.5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(item.icon, color: colors.primary, size: 22),
              const SizedBox(height: 8),
              Text(
                item.title,
                style: AppStyles.bodyMedium(
                  context,
                ).copyWith(fontWeight: FontWeight.w600),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 2),
              Text(
                item.subtitle,
                style: AppStyles.bodySmall(context),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
