part of '../play_page.dart';

class _SwipeAbleWidget extends StatefulWidget {
  final Widget child;
  final VoidCallback? onDismissedUp;
  final VoidCallback? onDismissedDown;

  const _SwipeAbleWidget({
    required this.child,
    this.onDismissedUp,
    this.onDismissedDown,
    super.key,
  });

  @override
  State<_SwipeAbleWidget> createState() => _SwipeAbleWidgetState();
}

class _SwipeAbleWidgetState extends State<_SwipeAbleWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  Animation<double>? moveAnimation;
  Animation<double>? sizeAnimation;
  Animation<double>? opacityAnimation;

  double offsetY = 0.0;
  bool isFinalAnimation = false;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    )
      ..addListener(
        () {
          offsetY = moveAnimation?.value ?? 0;
          setState(() {});
        },
      )
      ..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed && isFinalAnimation) {
            if (offsetY.isNegative) {
              widget.onDismissedUp?.call();
            } else {
              widget.onDismissedDown?.call();
            }
          }
        },
      );

    _startAppearAnimation();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: AnimatedBuilder(
        animation: controller,
        child: widget.child,
        builder: (context, child) => Opacity(
          opacity: opacityAnimation?.value ?? 1.0,
          child: Transform.scale(
            scale: sizeAnimation?.value ?? 1.0,
            child: Transform.translate(
              offset: Offset(0, offsetY),
              child: RepaintBoundary(
                child: GestureDetector(
                  onVerticalDragDown: (_) => controller.stop(),
                  onVerticalDragUpdate: (details) {
                    offsetY += details.delta.dy;
                    setState(() {});
                  },
                  onVerticalDragEnd: (details) {
                    if (offsetY.abs() > 150) {
                      _startRemoveAnimation();
                    } else {
                      _startReturnAnimation();
                    }
                  },
                  child: child,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _startReturnAnimation() {
    moveAnimation = controller
        .drive(
          CurveTween(
            curve: Curves.easeOutBack,
          ),
        )
        .drive(
          Tween<double>(
            begin: offsetY,
            end: 0.0,
          ),
        );

    controller.reset();
    controller.forward();
  }

  void _startRemoveAnimation() {
    moveAnimation = controller.drive(
      Tween<double>(
        begin: offsetY,
        end: offsetY.sign * (offsetY.abs() + 500),
      ),
    );
    opacityAnimation = controller.drive(
      Tween(
        begin: 1.0,
        end: 0,
      ),
    );
    sizeAnimation = controller.drive(
      Tween(
        begin: 1.0,
        end: 0.6,
      ),
    );
    isFinalAnimation = true;

    controller.reset();
    controller.forward();
  }

  void _startAppearAnimation() {
    sizeAnimation = controller.drive(
      Tween(begin: 0.6, end: 1),
    );
    opacityAnimation = controller.drive(
      Tween(begin: 0.0, end: 1.0),
    );
    controller.reset();
    controller.forward().whenComplete(() {
      opacityAnimation = null;
      sizeAnimation = null;
    });
  }
}
