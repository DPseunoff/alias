part of '../play_page.dart';

class _TimerWidget extends StatelessWidget {
  final int timeLeft;
  final bool isPaused;
  final VoidCallback onTap;

  const _TimerWidget({
    required this.timeLeft,
    required this.isPaused,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final strings = AppLocalizations.of(context);

    return TapAnimation(
      onTap: onTap,
      child: SizedBox(
        height: 42,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.everWhite,
            boxShadow: [AppShadows.mainLight],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: 13),
              Text(
                '$timeLeft ${strings.seconds}',
                style: textTheme.labelSmall,
              ),
              Padding(
                padding: const EdgeInsets.all(9).copyWith(left: 11),
                child: isPaused
                    ? AppIcons.pauseIcon(
                        color: AppColors.systemLight,
                      )
                    : AppIcons.alarmIcon(
                        color: AppColors.systemLight,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
