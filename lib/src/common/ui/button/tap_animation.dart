import 'dart:math';

import 'package:flutter/material.dart';

class TapAnimation extends StatefulWidget {
  final Widget child;
  final GestureTapCallback? onTap;
  final Duration animationDuration;

  const TapAnimation({
    required this.child,
    this.animationDuration = const Duration(milliseconds: 100),
    this.onTap,
    super.key,
  });

  @override
  State<TapAnimation> createState() => _TapAnimationState();
}

class _TapAnimationState extends State<TapAnimation> {
  static const _kReferenceScaleIndent = 200;

  double resultScale = 1.0;
  bool pressed = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(calculateResultScale);
      }
    });
  }

  void calculateResultScale() {
    final renderObject = (context.findRenderObject() as RenderBox?)!;
    final size = renderObject.hasSize ? renderObject.size : Size.zero;

    final maxSide = max(size.height, size.width);

    resultScale = ((maxSide - (1 - 0.98) * _kReferenceScaleIndent) / maxSide)
        .clamp(0.0, 1.0);
  }

  @override
  Widget build(BuildContext context) => RepaintBoundary(
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: widget.onTap,
          onTapDown: (_) => setState(() => pressed = true),
          onTapUp: (_) => setState(() => pressed = false),
          onTapCancel: () => setState(() => pressed = false),
          child: TweenAnimationBuilder(
            curve: Curves.easeOutCubic,
            duration: widget.animationDuration,
            tween: Tween<double>(
              begin: 1.0,
              end: pressed ? resultScale : 1.0,
            ),
            builder: (context, scale, child) => Transform.scale(
              scale: scale,
              child: child,
            ),
            child: widget.child,
          ),
        ),
      );
}
