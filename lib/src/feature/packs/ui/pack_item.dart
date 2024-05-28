import 'package:flutter/material.dart';

import '../../../common/theme/theme.dart';
import '../../../common/ui/button/icon_button.dart';
import '../../../common/ui/button/tap_animation.dart';
import '../../../common/ui/icons.dart';

class PackItem extends StatelessWidget {
  final String name;
  final String difficulty;
  final String asset;
  final VoidCallback onTap;

  const PackItem({
    required this.name,
    required this.difficulty,
    required this.asset,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final buttonTheme = AppButtonThemeData.of(context);
    final textTheme = Theme.of(context).textTheme;

    return TapAnimation(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 343 / 279,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),

          /// TODO: сделать тему
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              AppShadows.mainLight,
            ],
            image: DecorationImage(
              image: AssetImage(asset),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Spacer(flex: 6),
                Flexible(
                  flex: 4,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppColors.everBlack.withOpacity(0),
                          AppColors.everBlack.withOpacity(0.15),
                          AppColors.everBlack.withOpacity(0.39),
                          AppColors.everBlack.withOpacity(0.75),
                          AppColors.everBlack.withOpacity(0.88),
                          AppColors.everBlack.withOpacity(0.92),
                        ],
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  name.capitalize(),
                                  style: textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.everWhite,
                                  ),
                                ),
                                Text(
                                  difficulty,
                                  style: textTheme.titleSmall?.copyWith(
                                    color: AppColors.grey,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            AppIconButton(
                              icon: AppIcons.playIcon(
                                color: buttonTheme.buttonIconColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }
}
