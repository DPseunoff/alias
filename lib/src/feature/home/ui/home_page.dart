import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/localization/localization.dart';
import '../../../common/theme/theme.dart';
import '../../../common/ui/appbar.dart';
import '../../../common/ui/button/tap_animation.dart';
import '../../../common/ui/footer.dart';
import '../../../common/ui/icons.dart';
import '../../../data/game/model/game_data.dart';
import '../../../domain/game/game_repository.dart';
import '../../navigation/navigation.dart';
import '../cubit/home_page_cubit.dart';

class HomePage extends AppPage {
  const HomePage() : super(args: const {});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => HomePageCubit(
          gameRepository: context.read<GameRepository>(),
        )..init(),
        child: const _HomePageWidget(),
      );
}

class _HomePageWidget extends StatelessWidget {
  const _HomePageWidget();

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const AliasAppBar(
            rightWidget: _LocaleSwitcher(),
          ),
          const Spacer(),
          AppIcons.appIcon(
            width: 170,
            height: 213,
          ),
          const Spacer(),
          const _HomePageButtons(),
        ],
      );
}

class _HomePageButtons extends StatelessWidget {
  const _HomePageButtons();

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context);

    final homeState = context.watch<HomePageCubit>().state;

    if (homeState.canContinue) {
      return BottomFooter(
        firstButtonTitle: strings.continueTitle,
        firstButtonOnTap: () => _onContinue(context, homeState.gameStatus),
        secondButtonTitle: strings.newGame,
        secondButtonOnTap: () => _onNewGame(context),
        thirdButtonTitle: strings.howToPlay,
        thirdButtonOnTap: () => _onHowToPlay(context),
      );
    } else {
      return BottomFooter(
        firstButtonTitle: strings.newGame,
        firstButtonOnTap: () => _onNewGame(context),
        secondButtonTitle: strings.howToPlay,
        secondButtonOnTap: () => _onHowToPlay(context),
      );
    }
  }

  void _onContinue(BuildContext context, GameStatus status) {
    context.read<NavigationCubit>().resolveNavigationByGameStatus(
          status: status,
        );
  }

  void _onNewGame(BuildContext context) {
    context.read<NavigationCubit>().push(path: AppPageName.packs.path);
  }

  void _onHowToPlay(BuildContext context) {
    context.read<NavigationCubit>().push(path: AppPageName.howToPlay.path);
  }
}

class _LocaleSwitcher extends StatelessWidget {
  const _LocaleSwitcher();

  @override
  Widget build(BuildContext context) {
    final localeName = AppLocalizations.of(context).localeName;
    final textTheme = Theme.of(context).textTheme;
    final buttonTheme = AppButtonThemeData.of(context);

    return TapAnimation(
      onTap: context.read<LocalizationCubit>().toggleEnRu,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: buttonTheme.buttonAccentColor,
          boxShadow: [buttonTheme.buttonShadow],
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(
            19,
            9,
            12,
            9,
          ),
          child: Row(
            children: [
              Text(
                localeName.toUpperCase(),
                style: textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: buttonTheme.buttonTextAccentColor,
                ),
              ),
              const SizedBox(width: 15),
              _localeIcon(localeName),
            ],
          ),
        ),
      ),
    );
  }

  SvgPicture _localeIcon(String localeName) {
    switch (localeName) {
      case 'ru':
        return AppIcons.rusIcon();
      default:
        return AppIcons.engIcon();
    }
  }
}
