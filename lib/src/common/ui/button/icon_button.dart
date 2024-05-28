import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/theme.dart';
import 'tap_animation.dart';

class AppIconButton extends StatelessWidget {
  final SvgPicture icon;
  final VoidCallback? onTap;

  const AppIconButton({
    required this.icon,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final buttonTheme = AppButtonThemeData.of(context);

    return TapAnimation(
      onTap: onTap,
      child: SizedBox(
        width: 42,
        height: 42,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: buttonTheme.buttonColor,
            boxShadow: [
              buttonTheme.buttonShadow,
            ],
          ),
          child: Center(
            child: icon,
          ),
        ),
      ),
    );
  }
}
