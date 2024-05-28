import 'package:flutter/material.dart';

import '../../ui/icons.dart';

class AppCheckbox extends StatelessWidget {
  final bool checked;
  final Widget Function({Color? color}) icon;
  final Widget Function({Color? color})? uncheckedIcon;

  const AppCheckbox({
    this.checked = false,
    this.icon = AppIcons.checkIcon,
    this.uncheckedIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = CheckboxTheme.of(context);

    final fillColor = theme.fillColor?.resolve({});
    final checkColor = theme.checkColor?.resolve({});
    final uncheckedColor = theme.overlayColor?.resolve({});

    final boxColor = checked ? fillColor : Colors.transparent;
    final borderColor = checked ? null : uncheckedColor;

    final secondaryIcon = uncheckedIcon != null
        ? Center(
            child: uncheckedIcon!(
              color: uncheckedColor,
            ),
          )
        : null;

    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(12),
        border: borderColor != null
            ? Border.all(
                color: borderColor,
              )
            : null,
      ),
      child: checked
          ? Center(
              child: icon(
                color: checkColor,
              ),
            )
          : secondaryIcon,
    );
  }
}
