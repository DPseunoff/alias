part of '../teams_page.dart';

class _TeamCard extends StatelessWidget {
  final String name;
  final String emoji;
  final Animation<Offset> animation;
  final VoidCallback? onTap;

  const _TeamCard({
    required this.name,
    required this.emoji,
    required this.animation,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SlideTransition(
      position: animation,
      child: Container(
        height: 74,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: AppColors.everWhite,
          boxShadow: [AppShadows.mainLight],
        ),
        child: Row(
          children: [
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: AppColors.backgroundLight,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  emoji,
                  style: GoogleFonts.lato(fontSize: 32),
                ),
              ),
            ),
            const SizedBox(width: 7),
            Text(name, style: textTheme.titleMedium),
            const Spacer(),
            AppIconButton(
              icon: AppIcons.exitIcon(color: AppColors.everWhite),
              onTap: onTap,
            ),
          ],
        ),
      ),
    );
  }
}
