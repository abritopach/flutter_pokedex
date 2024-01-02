import 'package:flutter/material.dart';
import 'package:flutter_pokedex/ui/pages/pokedex/pokedex_controller.dart';
import 'package:flutter_pokedex/ui/pages/pokedex/pokedex_controller.dart';
import 'package:flutter_pokedex/ui/widgets/modal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchModal extends ConsumerWidget {
  const SearchModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewInsets = MediaQuery.of(context).viewInsets.bottom;
    final safeAreaBottom = MediaQuery.of(context).padding.bottom;

    return Modal(
      child: Flexible(
        child: Padding(
          padding: EdgeInsets.fromLTRB(26, 14, 26, 14 + viewInsets + safeAreaBottom),
          child: SearchBar(
                  padding: const MaterialStatePropertyAll<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 18, vertical: 8)),
                  leading: const Icon(Icons.search),
                  hintText: 'Search Pokemon, Move, Ability etc',
                  onTap: () {
                  },
                  onChanged: (searchText) => ref.read(pokedexControllerProvider.notifier).searchPokemons(searchText)
                )
        ),
      ),
    );
  }
}