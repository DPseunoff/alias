import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/game/model/game_data.dart';
import '../page/page_config.dart';
import 'navigation_stack.dart';

class NavigationCubit extends Cubit<NavigationStack> {
  NavigationCubit()
      : super(
          NavigationStack(
            [AppPageConfig(location: AppPageName.home.path)],
          ),
        );

  bool canPop() => state.canPop();

  void pop() => emit(state.pop());

  void push({
    required String path,
    Map<String, Object?>? args,
  }) {
    final newConfig = AppPageConfig(location: path, args: args);
    emit(state.push(newConfig));
  }

  void popUntil({
    required String path,
  }) {
    final newConfig = AppPageConfig(location: path);
    emit(state.popUntil(newConfig));
  }

  void popUntilAndPush({
    required String path,
    required String untilPath,
    Map<String, Object?>? args,
  }) {
    final newConfig = AppPageConfig(location: path, args: args);
    final untilConfig = AppPageConfig(location: untilPath);

    emit(
      state.popUntil(untilConfig).push(newConfig),
    );
  }

  void resolveNavigationByGameStatus({
    required GameStatus status,
  }) {
    final configs = <AppPageConfig>[
      AppPageConfig(location: AppPageName.home.path),
    ];

    switch (status) {
      case GameStatus.notStarted:
        break;
      case GameStatus.teams:
        configs.add(AppPageConfig(location: AppPageName.teams.path));
        break;
      case GameStatus.settings:
        configs.addAll([
          AppPageConfig(location: AppPageName.teams.path),
          AppPageConfig(location: AppPageName.settings.path),
        ]);
        break;
      case GameStatus.pregame:
        configs.addAll([
          AppPageConfig(location: AppPageName.teams.path),
          AppPageConfig(location: AppPageName.settings.path),
          AppPageConfig(location: AppPageName.pregame.path),
        ]);
        break;
      case GameStatus.betweenRounds:
        configs.add(AppPageConfig(location: AppPageName.pregame.path));
        break;
      case GameStatus.play:
        configs.add(AppPageConfig(location: AppPageName.play.path));
        break;
      case GameStatus.words:
        configs.add(AppPageConfig(location: AppPageName.words.path));
        break;
      case GameStatus.afterPlay:
        configs.add(AppPageConfig(location: AppPageName.afterPlay.path));
        break;
      case GameStatus.gameOver:
        configs.add(AppPageConfig(location: AppPageName.gameOver.path));
        break;
    }

    emit(state.clearAndPushAll(configs));
  }
}
