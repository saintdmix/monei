import 'package:flutter/material.dart';
import '../../core/theme/app_colors_extension.dart';

/// Animated background with floating gradient orbs for auth screens.
class AnimatedBackground extends StatefulWidget {
  final Widget child;

  const AnimatedBackground({super.key, required this.child});

  @override
  State<AnimatedBackground> createState() => _AnimatedBackgroundState();
}

class _AnimatedBackgroundState extends State<AnimatedBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(gradient: colors.backgroundGradient),
        ),
        AnimatedBuilder(
          animation: _controller,
          builder: (_, child) => Positioned(
            top: -60 + (_controller.value * 30),
            right: -40 + (_controller.value * 20),
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    colors.primary.withValues(alpha: 0.3),
                    colors.primary.withValues(alpha: 0.0),
                  ],
                ),
              ),
            ),
          ),
        ),
        AnimatedBuilder(
          animation: _controller,
          builder: (_, child) => Positioned(
            bottom: -80 + (_controller.value * 40),
            left: -50 + (_controller.value * 25),
            child: Container(
              width: 260,
              height: 260,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    colors.accent.withValues(alpha: 0.2),
                    colors.accent.withValues(alpha: 0.0),
                  ],
                ),
              ),
            ),
          ),
        ),
        AnimatedBuilder(
          animation: _controller,
          builder: (_, child) => Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            left:
                MediaQuery.of(context).size.width * 0.3 +
                (_controller.value * 15),
            child: Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    colors.accentPink.withValues(alpha: 0.15),
                    colors.accentPink.withValues(alpha: 0.0),
                  ],
                ),
              ),
            ),
          ),
        ),
        widget.child,
      ],
    );
  }
}
