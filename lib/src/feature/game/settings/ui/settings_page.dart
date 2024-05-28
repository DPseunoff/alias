import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/localization/localization.dart';
import '../../../../common/theme/components/checkbox.dart';
import '../../../../common/theme/theme.dart';
import '../../../../common/ui/appbar.dart';
import '../../../../common/ui/footer.dart';
import '../../../../domain/game/game_repository.dart';
import '../../../navigation/navigation.dart';
import '../cubit/settings_cubit.dart';

part 'components/checkbox_setting.dart';

part 'components/slider_setting.dart';

class SettingsPage extends AppPage {
  const SettingsPage() : super(args: const {});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => SettingsCubit(
          gameRepository: context.read<GameRepository>(),
        ),
        child: const _SettingsWidget(),
      );
}

class _SettingsWidget extends StatelessWidget {
  const _SettingsWidget();

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context);

    return Column(
      children: [
        AliasAppBar(
          centerTitle: strings.gameSettingsTitle,
          onBackTap: () {
            context.read<NavigationCubit>().pop();
          },
        ),
        Builder(
          builder: (context) {
            final checked = context.select(
              (SettingsCubit cubit) => cubit.state.penaltyForSkipping,
            );
            return CheckboxSetting(
              title: strings.penaltySettingTitle,
              checked: checked,
              onTap: () => context.read<SettingsCubit>().switchPenalty(),
            );
          },
        ),
        Builder(
          builder: (context) {
            final initialValue = context.read<SettingsCubit>().state.wordsToWin;
            return SliderSetting(
              initialValue: initialValue,
              title: strings.numberOfWordsSettingTitle,
              subtitle: strings.numberOfWordsSettingSubtitle,
              onChangeEnd: (words) =>
                  context.read<SettingsCubit>().setWordsToWin(words),
            );
          },
        ),
        Builder(
          builder: (context) {
            final initialValue = context.read<SettingsCubit>().state.gameTime;
            return SliderSetting(
              initialValue: initialValue,
              enableBottomBorder: true,
              title: strings.gameTimeSettingTitle,
              subtitle: strings.gameTimeSettingSubtitle,
              onChangeEnd: (time) =>
                  context.read<SettingsCubit>().setGameTime(time),
            );
          },
        ),
        const Spacer(),
        BottomFooter(
          withBackground: true,
          firstButtonTitle: strings.continueTitle,
          firstButtonOnTap: () {
            context.read<SettingsCubit>().saveSettings();
            context.read<NavigationCubit>().push(
                  path: AppPageName.pregame.path,
                );
          },
        ),
      ],
    );
  }
}
