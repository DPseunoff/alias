import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../game/after_round/ui/after_round_page.dart';
import '../../game/game_over/ui/game_over_page.dart';
import '../../game/play/ui/play_page.dart';
import '../../game/pregame/ui/pregame_page.dart';
import '../../game/settings/ui/settings_page.dart';
import '../../game/teams/ui/teams_page.dart';
import '../../game/words/ui/words_page.dart';
import '../../home/ui/home_page.dart';
import '../../packs/ui/packs_page.dart';
import '../cubit/navigation_cubit.dart';
import '../page/page_config.dart';

class AppRouterDelegate extends RouterDelegate<AppPageConfig>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppPageConfig> {
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  final NavigationCubit _cubit;

  late final _logger = Logger();

  AppRouterDelegate({
    required NavigationCubit cubit,
    required this.navigatorKey,
  }) : _cubit = cubit;

  @override
  Widget build(BuildContext context) => Navigator(
        key: navigatorKey,
        pages: _resolveStackPages(_cubit.state.pages).toList(growable: false),
        onPopPage: _onPopPage,
      );

  @override
  Future<void> setNewRoutePath(configuration) async {
    _logger.i('Got deeplink: ${configuration.route}');
    if (configuration.route != '/') {
      _cubit.push(path: configuration.route, args: configuration.args);
    }
  }

  Iterable<Page> _resolveStackPages(List<AppPageConfig> configs) sync* {
    for (final config in configs) {
      switch (config.page) {
        case AppPageName.unknown:
        case AppPageName.howToPlay:
        case AppPageName.home:
          yield const HomePage();
          break;
        case AppPageName.packs:
          yield const PacksPage();
          break;
        case AppPageName.teams:
          yield const TeamsPage();
          break;
        case AppPageName.settings:
          yield const SettingsPage();
          break;
        case AppPageName.pregame:
          yield const PregamePage();
          break;
        case AppPageName.play:
          yield const PlayPage();
          break;
        case AppPageName.words:
          yield const WordsPage();
          break;
        case AppPageName.afterPlay:
          yield const AfterPlayPage();
          break;
        case AppPageName.gameOver:
          yield const GameOverPage();
          break;
      }
    }
  }

  bool _onPopPage(Route<dynamic> route, dynamic result) {
    final didPop = route.didPop(result);
    if (!didPop) {
      return false;
    }

    if (_cubit.canPop()) {
      _cubit.pop();
      return true;
    }
    return false;
  }
}
