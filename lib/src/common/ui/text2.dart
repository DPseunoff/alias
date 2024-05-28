import 'package:flutter/material.dart';

import '../theme/theme.dart';

class Text2 extends StatelessWidget {
  final String title;
  final String subtitle;
  const Text2({
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 19),
        Text(
          title,
          style: textTheme.titleLarge,
        ),
        const SizedBox(height: 7),
        Text(
          subtitle,
          style: textTheme.titleMedium?.copyWith(
            color: AppColors.minorLight,
          ),
        ),
        const SizedBox(height: 19),
      ],
    );
  }
}
