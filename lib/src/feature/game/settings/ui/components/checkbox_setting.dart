part of '../settings_page.dart';

class CheckboxSetting extends StatelessWidget {
  final String title;
  final bool checked;
  final bool enableTopBorder;
  final bool enableBottomBorder;
  final VoidCallback onTap;

  const CheckboxSetting({
    required this.title,
    required this.onTap,
    this.checked = false,
    this.enableTopBorder = true,
    this.enableBottomBorder = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          border: Border(
            top: enableTopBorder
                ? const BorderSide(color: AppColors.grey)
                : BorderSide.none,
            bottom: enableBottomBorder
                ? const BorderSide(color: AppColors.grey)
                : BorderSide.none,
          ),
        ),
        child: Row(
          children: [
            const SizedBox(width: 16),
            Text(
              title,
              style: textTheme.bodyMedium,
            ),
            const Spacer(),
            AppCheckbox(
              checked: checked,
            ),
            const SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}
