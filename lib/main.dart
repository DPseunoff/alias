import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/common/localization/localization.dart';
import 'src/common/theme/theme.dart';
import 'src/data/game/api/local_impl.dart';
import 'src/data/packs/api/local_impl.dart';
import 'src/domain/game/game_repository.dart';
import 'src/domain/pack/packs_repository.dart';
import 'src/feature/navigation/navigation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sharedPreferences = await SharedPreferences.getInstance();

  runApp(App(
    sharedPreferences: sharedPreferences,
  ));
}

class App extends StatelessWidget {
  final SharedPreferences sharedPreferences;

  const App({
    required this.sharedPreferences,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return _AppRepositoryProviderWidget(
      sharedPreferences: sharedPreferences,
      child: const _AppBlocsProviderWidget(
        child: _AppView(),
      ),
    );
  }
}

class _AppRepositoryProviderWidget extends StatelessWidget {
  final SharedPreferences sharedPreferences;

  final Widget child;

  const _AppRepositoryProviderWidget({
    required this.sharedPreferences,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            lazy: false,
            create: (_) => PacksRepository(
              packsApi: PacksLocalApi(),
            ),
          ),
          RepositoryProvider(
            lazy: false,
            create: (_) => GameRepository(
              gameApi: GameLocalApi(
                sharedPreferences: sharedPreferences,
              ),
            ),
          ),
        ],
        child: child,
      );
}

class _AppBlocsProviderWidget extends StatelessWidget {
  final Widget child;

  const _AppBlocsProviderWidget({
    required this.child,
  });

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<LocalizationCubit>(
            create: (_) => LocalizationCubit(),
          ),
          BlocProvider<ThemeCubit>(
            create: (_) => ThemeCubit(),
          ),
          BlocProvider<NavigationCubit>(
            create: (_) => NavigationCubit(),
          ),
        ],
        child: child,
      );
}

final _globalKey = GlobalKey<NavigatorState>();

class _AppView extends StatelessWidget {
  const _AppView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalizationCubit, Locale>(
      builder: (_, locale) => BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme) => MaterialApp(
          onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          locale: locale,
          theme: theme,
          home: Material(
            child: SafeArea(
              child: Builder(
                builder: (context) {
                  return Router(
                    routerDelegate: AppRouterDelegate(
                      navigatorKey: _globalKey,
                      cubit: context.watch<NavigationCubit>(),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
