import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/localization/localization.dart';
import '../../../common/ui/appbar.dart';
import '../../../data/packs/model/pack_data.dart';
import '../../../domain/game/game_repository.dart';
import '../../../domain/pack/packs_repository.dart';
import '../../navigation/navigation.dart';
import '../cubit/packs_cubit.dart';
import '../cubit/packs_state.dart';
import 'pack_item.dart';

class PacksPage extends AppPage {
  const PacksPage() : super(args: const {});

  @override
  Widget build(BuildContext context) => BlocProvider(
        lazy: false,
        create: (_) => PacksCubit(
          packsRepository: context.read<PacksRepository>(),
          gameRepository: context.read<GameRepository>(),
        )..init(),
        child: const _PacksPageWidget(),
      );
}

class _PacksPageWidget extends StatelessWidget {
  const _PacksPageWidget();

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context);

    return Column(
      children: [
        AliasAppBar(
          centerTitle: strings.packagesTitle,
          onBackTap: () {
            context.read<NavigationCubit>().pop();
          },
        ),
        BlocBuilder<PacksCubit, PacksState>(
          builder: (_, state) => state.maybeMap(
            success: (s) => Expanded(
              child: ListView.separated(
                itemCount: s.packs.length,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(vertical: 17),
                separatorBuilder: (_, __) => const SizedBox(height: 8),
                itemBuilder: (context, index) {
                  final packData = s.packs[index];
                  return PackItem(
                    name: packData.name,
                    asset: packData.asset,
                    difficulty: _packDifficultyString(
                      context,
                      difficulty: packData.difficulty,
                    ),
                    onTap: () {
                      context.read<PacksCubit>().selectPack(
                            selectedPack: packData,
                          );
                      context.read<NavigationCubit>().push(
                            path: AppPageName.teams.path,
                          );
                    },
                  );
                },
              ),
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }

  String _packDifficultyString(
    BuildContext context, {
    PackDifficulty difficulty = PackDifficulty.easy,
  }) {
    final strings = AppLocalizations.of(context);
    switch (difficulty) {
      case PackDifficulty.easy:
        return strings.easyPackageDifficulty;
      case PackDifficulty.medium:
        return strings.mediumPackageDifficulty;
      case PackDifficulty.hard:
        return strings.hardPackageDifficulty;
    }
  }
}
