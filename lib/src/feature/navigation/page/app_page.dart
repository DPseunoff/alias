import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef TransitionAnimationBuilder = Widget Function(
  BuildContext,
  Animation<double>,
  Animation<double>,
  Widget,
);

abstract class AppPage<T> extends Page<T> {
  final Map<String, Object?> args;
  final int transitionDuration;
  final int reverseTransitionDuration;
  final TransitionAnimationBuilder? animationBuilder;

  const AppPage({
    required this.args,
    this.transitionDuration = 250,
    this.reverseTransitionDuration = 250,
    this.animationBuilder,
  });

  Widget build(BuildContext context);

  @override
  Route<T> createRoute(BuildContext context) => PageRouteBuilder(
        transitionDuration: Duration(milliseconds: transitionDuration),
        reverseTransitionDuration:
            Duration(milliseconds: reverseTransitionDuration),
        transitionsBuilder: (context, animation, animation2, child) =>
            animationBuilder?.call(
              context,
              animation,
              animation2,
              child,
            ) ??
            _defaultAnimationBuilder(
              context,
              animation,
              animation2,
              child,
            ),
        pageBuilder: (context, animation, animation2) => build(context),
        settings: this,
      );

  Widget _defaultAnimationBuilder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> animation2,
    Widget child,
  ) {
    const begin = Offset(1.0, 0.0);
    const end = Offset.zero;
    // const curve = Curves.elasticIn;

    final tween = Tween(begin: begin, end: end)
        .chain(CurveTween(curve: Curves.fastEaseInToSlowEaseOut));
    final tween2 = Tween(begin: end, end: const Offset(-1.0, 0.0))
        .chain(CurveTween(curve: Curves.linearToEaseOut));

    // return CupertinoPageTransition(
    //   primaryRouteAnimation: animation,
    //   secondaryRouteAnimation: animation2,
    //   linearTransition: true,
    //   child: child,
    // );

    return SlideTransition(
      position: animation2.drive(tween2),
      child: SlideTransition(
        position: animation.drive(tween),
        child: child,
      ),
    );
  }
}
