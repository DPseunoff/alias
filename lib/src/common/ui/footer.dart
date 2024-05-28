import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../theme/theme.dart';
import 'button/button.dart';

class BottomFooter extends StatelessWidget {
  final String firstButtonTitle;
  final VoidCallback firstButtonOnTap;
  final bool firstButtonDisabled;
  final String? secondButtonTitle;
  final VoidCallback? secondButtonOnTap;
  final bool secondButtonDisabled;
  final String? thirdButtonTitle;
  final VoidCallback? thirdButtonOnTap;
  final bool withBackground;

  const BottomFooter({
    required this.firstButtonTitle,
    required this.firstButtonOnTap,
    this.withBackground = false,
    this.firstButtonDisabled = false,
    this.secondButtonDisabled = false,
    this.secondButtonTitle,
    this.secondButtonOnTap,
    this.thirdButtonTitle,
    this.thirdButtonOnTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final secondButtonTitle = this.secondButtonTitle;
    final thirdButtonTitle = this.thirdButtonTitle;

    final buttons = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 47),
          child: AppButton(
            title: firstButtonTitle,
            onTap: firstButtonOnTap,
            key: ValueKey(firstButtonOnTap),
            state: firstButtonDisabled
                ? AppButtonState.disabled
                : AppButtonState.enabled,
          ),
        ),
        if (secondButtonTitle != null) ...[
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 47),
            child: AppButton(
              title: secondButtonTitle,
              onTap: secondButtonOnTap,
              key: ValueKey(secondButtonTitle),
              isAccent: thirdButtonTitle == null,
              state: secondButtonDisabled
                  ? AppButtonState.disabled
                  : AppButtonState.enabled,
            ),
          ),
        ],
        if (thirdButtonTitle != null) ...[
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 47),
            child: AppButton(
              title: thirdButtonTitle,
              onTap: thirdButtonOnTap,
              key: ValueKey(thirdButtonTitle),
              isAccent: true,
            ),
          ),
        ],
        const SizedBox(height: 35),
      ],
    );

    if (withBackground) {
      return _FooterBackgroundDecorator(child: buttons);
    }

    return buttons;
  }
}

class _FooterBackgroundDecorator extends StatelessWidget {
  final Widget child;

  const _FooterBackgroundDecorator({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final footerTheme = AppHeaderFooterThemeData.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        color: footerTheme.backgroundColor,
        boxShadow: [
          footerTheme.footerShadow,
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 14),
        child: child,
      ),
    );
  }
}
