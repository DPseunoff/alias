part of '../settings_page.dart';

class SliderSetting extends StatefulWidget {
  final String title;
  final String subtitle;
  final int initialValue;
  final int maxValue;
  final bool enableTopBorder;
  final bool enableBottomBorder;
  final Function(int) onChangeEnd;

  const SliderSetting({
    required this.title,
    required this.subtitle,
    required this.onChangeEnd,
    this.initialValue = 60,
    this.maxValue = 150,
    this.enableTopBorder = true,
    this.enableBottomBorder = false,
    super.key,
  });

  @override
  State<SliderSetting> createState() => _SliderSettingState();
}

class _SliderSettingState extends State<SliderSetting> {
  double _currentValue = 60.0;

  @override
  void initState() {
    _currentValue = widget.initialValue.toDouble();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        border: Border(
          top: widget.enableTopBorder
              ? const BorderSide(color: AppColors.grey)
              : BorderSide.none,
          bottom: widget.enableBottomBorder
              ? const BorderSide(color: AppColors.grey)
              : BorderSide.none,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const SizedBox(width: 16),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: textTheme.bodyMedium,
                  ),
                  Text(
                    widget.subtitle,
                    style: textTheme.labelSmall?.copyWith(
                      color: AppColors.minorLight,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                _currentValue.round().toInt().toString(),
                style: textTheme.bodyMedium?.copyWith(
                  color: AppColors.systemLight,
                ),
              ),
              const SizedBox(width: 25),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 56),
                  child: CupertinoSlider(
                    key: widget.key,
                    value: _currentValue,
                    min: 1,
                    max: widget.maxValue.toDouble(),
                    divisions: widget.maxValue - 1,
                    activeColor: AppColors.systemLight,
                    onChanged: (value) => setState(() => _currentValue = value),
                    onChangeEnd: (value) =>
                        widget.onChangeEnd(value.round().toInt()),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
