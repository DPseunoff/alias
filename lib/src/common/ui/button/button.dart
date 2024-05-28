import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import 'tap_animation.dart';

enum AppButtonState {
  enabled,
  disabled;

  bool get isDisabled => this == AppButtonState.disabled;
}

class AppButton extends StatelessWidget {
  final String title;
  final bool isAccent;
  final VoidCallback? onTap;
  final AppButtonState state;

  const AppButton({
    required this.title,
    this.isAccent = false,
    this.state = AppButtonState.enabled,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final buttonTheme = AppButtonThemeData.of(context);

    final buttonColor =
        isAccent ? buttonTheme.buttonAccentColor : buttonTheme.buttonColor;
    final textColor = isAccent
        ? buttonTheme.buttonTextAccentColor
        : buttonTheme.buttonTextColor;

    return TapAnimation(
      onTap: state.isDisabled ? null : onTap,
      child: Opacity(
        opacity: state.isDisabled ? 0.75 : 1.0,
        child: SizedBox(
          height: 58,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: buttonColor,
              boxShadow: [
                buttonTheme.buttonShadow,
              ],
            ),
            child: Center(
              child: Text(
                title,
                style: buttonTheme.buttonTextStyle.copyWith(
                  color: textColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
