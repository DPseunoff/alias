import 'package:flutter/material.dart';

import '../theme/theme.dart';
import 'button/icon_button.dart';
import 'icons.dart';

class AliasAppBar extends StatelessWidget {
  final String? centerTitle;
  final VoidCallback? onBackTap;
  final Widget? rightWidget;

  const AliasAppBar({
    this.onBackTap,
    this.centerTitle,
    this.rightWidget,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final centerTitle = this.centerTitle;
    final rightWidget = this.rightWidget;
    final buttonTheme = AppButtonThemeData.of(context);

    return SizedBox(
      height: 66,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: _CenterTitleDecorator(
          centerTitle: centerTitle,
          child: Center(
            child: Row(
              children: [
                if (onBackTap != null)
                  AppIconButton(
                    icon: AppIcons.arrowBackIcon(
                      color: buttonTheme.buttonIconColor,
                    ),
                    onTap: onBackTap,
                  ),
                const Spacer(),
                if (rightWidget != null) rightWidget,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CenterTitleDecorator extends StatelessWidget {
  final String? centerTitle;
  final Widget child;

  const _CenterTitleDecorator({
    required this.centerTitle,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final centerTitle = this.centerTitle;
    final appBarTheme = Theme.of(context).appBarTheme;

    if (centerTitle == null) {
      return child;
    }

    return Stack(
      children: [
        Center(
          child: Text(
            centerTitle,
            style: appBarTheme.titleTextStyle,
          ),
        ),
        child,
      ],
    );
  }
}
