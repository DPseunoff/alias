part of '../play_page.dart';

class _WordsCounter extends StatelessWidget {
  final String title;
  final int count;
  final bool inverse;

  const _WordsCounter({
    required this.title,
    required this.count,
    this.inverse = false,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: 150,
      height: 58,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: inverse ? AppColors.lossLight : AppColors.winLight,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(),
            Text(title, style: textTheme.bodyMedium),
            const Spacer(),
            SizedBox(
              width: 42,
              height: 42,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.everWhite,
                ),
                child: Center(
                  child: Text(
                    count.toString(),
                    style: textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
