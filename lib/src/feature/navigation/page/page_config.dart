class AppPageConfig {
  late final Uri path;
  late final String route;
  final Map<String, Object?> args = {};
  late final AppPageName page;

  AppPageConfig({
    required String location,
    Map<String, Object?>? args,
  }) {
    path = Uri.tryParse(location) ?? Uri.parse('/');
    route = path.toString();
    if (args != null) {
      this.args.addAll(args);
    }
    page = resolvePage(this);
  }

  @override
  @override
  bool operator ==(Object other) =>
      other is AppPageConfig &&
      runtimeType == other.runtimeType &&
      path == other.path &&
      route == other.route &&
      page == other.page &&
      args == other.args;

  @override
  int get hashCode => Object.hashAll([super.hashCode, page, path, route, args]);

  static AppPageName resolvePage(AppPageConfig config) {
    return _routes[config.route]!;
  }
}

enum AppPageName {
  unknown(path: '/'),
  home(path: '/home'),
  howToPlay(path: '/how_to_play'),
  packs(path: '/packs'),
  teams(path: '/teams'),
  settings(path: '/settings'),
  pregame(path: '/pregame'),
  play(path: '/play'),
  words(path: '/words'),
  afterPlay(path: '/after_play'),
  gameOver(path: '/game_over');

  const AppPageName({
    required this.path,
  });

  final String path;
}

Map<String, AppPageName> _routes = {
  AppPageName.home.path: AppPageName.home,
  AppPageName.packs.path: AppPageName.packs,
  AppPageName.teams.path: AppPageName.teams,
  AppPageName.settings.path: AppPageName.settings,
  AppPageName.pregame.path: AppPageName.pregame,
  AppPageName.play.path: AppPageName.play,
  AppPageName.words.path: AppPageName.words,
  AppPageName.afterPlay.path: AppPageName.afterPlay,
  AppPageName.gameOver.path: AppPageName.gameOver,
};
