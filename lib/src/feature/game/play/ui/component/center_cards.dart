part of '../play_page.dart';

class _WordCard extends StatelessWidget {
  final String word;

  const _WordCard({
    required this.word,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: 294,
      height: 294,
      margin: const EdgeInsets.symmetric(horizontal: 38),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        border: Border.all(
          width: 6,
          color: AppColors.systemLight,
        ),
        color: AppColors.everWhite,
        boxShadow: [AppShadows.mainLight],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            word,
            textAlign: TextAlign.center,
            style: textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}

class _StartCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _StartCard({
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: 294,
      height: 294,
      child: Material(
        color: AppColors.systemLight,
        borderRadius: BorderRadius.circular(26),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(26),
          highlightColor: AppColors.everBlack.withOpacity(0.1),
          child: Center(
            child: Text(
              title,
              style: textTheme.titleLarge?.copyWith(
                color: AppColors.everWhite,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
