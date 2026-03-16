import 'package:flutter/material.dart';
import '../../core/constants/app_styles.dart';
import '../../core/theme/app_colors_extension.dart';

/// Glass-styled app bar for the chat screen.
class GlassAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onMenuPressed;
  final IconData? leadingIcon;
  final List<Widget>? actions;

  const GlassAppBar({
    super.key,
    required this.title,
    this.onMenuPressed,
    this.leadingIcon,
    this.actions,
  });

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return Container(
      decoration: BoxDecoration(
        color: colors.surface.withValues(alpha: 0.9),
        border: Border(bottom: BorderSide(color: colors.border, width: 0.5)),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              if (onMenuPressed != null)
                IconButton(
                  onPressed: onMenuPressed,
                  icon: Icon(
                    leadingIcon ?? Icons.menu_rounded,
                    color: colors.textPrimary,
                    size: 24,
                  ),
                ),
              const SizedBox(width: 4),
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: colors.accentGreen,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: AppStyles.h4(context),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (actions != null) ...actions!,
            ],
          ),
        ),
      ),
    );
  }
}
