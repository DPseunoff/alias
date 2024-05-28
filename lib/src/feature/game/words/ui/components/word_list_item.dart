part of '../words_page.dart';

class _WordListItem extends StatelessWidget {
  final String word;
  final bool guessed;
  final Function(String) onTap;

  const _WordListItem({
    required this.word,
    required this.guessed,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Material(
      color: AppColors.everWhite,
      child: InkWell(
        onTap: () => onTap(word),
        child: Padding(
          padding: const EdgeInsets.all(8).copyWith(left: 15),
          child: Row(
            children: [
              Expanded(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    word,
                    textAlign: TextAlign.start,
                    style: textTheme.titleSmall?.copyWith(
                      height: 17 / 24,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Theme(
                data: theme.copyWith(
                  checkboxTheme: theme.checkboxTheme.copyWith(
                    fillColor: const MaterialStatePropertyAll(
                      AppColors.winLight,
                    ),
                  ),
                ),
                child: AppCheckbox(
                  checked: guessed,
                  icon: AppIcons.checkIcon,
                ),
              ),
              const SizedBox(width: 8),
              Theme(
                data: theme.copyWith(
                  checkboxTheme: theme.checkboxTheme.copyWith(
                    fillColor: const MaterialStatePropertyAll(
                      AppColors.lossLight,
                    ),
                  ),
                ),
                child: AppCheckbox(
                  checked: !guessed,
                  icon: AppIcons.exitIcon,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
