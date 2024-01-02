part of '../pokedex.dart';

class _PokemonGrid extends ConsumerStatefulWidget {
  const _PokemonGrid();

  @override
  ConsumerState createState() => _PokemonGridState();
}

class _PokemonGridState extends ConsumerState {

  static const double _endReachedThreshold = 200;

  final GlobalKey<NestedScrollViewState> _scrollKey = GlobalKey();

  static const TextStyle _textStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: kToolbarHeight / 3,
    height: 1,
  );

  static const title = 'Pokedex';

  @override
  void initState() {
    super.initState();
    scheduleMicrotask(() {
      _scrollKey.currentState?.innerController.addListener(_onScroll);
    });
  }

  @override
  void dispose() {
    _scrollKey.currentState?.innerController.dispose();
    _scrollKey.currentState?.dispose();

    super.dispose();
  }

  void _onScroll() {
    final innerController = _scrollKey.currentState?.innerController;

    if (innerController == null || !innerController.hasClients) return;

    final thresholdReached = innerController.position.extentAfter < _endReachedThreshold;

    if (thresholdReached) {
      // Load more!
      ref.read(pokedexControllerProvider.notifier).fetchMore();
    }
  }

  @override
  Widget build(BuildContext context) {

    final AsyncValue<int> pokemonsCounter = ref.watch(fetchPokemonsCountProvider);
    final pokemons = ref.watch(pokedexControllerProvider);
    final paginatorController = ref.watch(pokedexControllerProvider.notifier);
    final hasMore = paginatorController.hasMore;
    final pokemonsValue = pokemons.value ?? [];
    final isFetchingMore = pokemons.isLoading & pokemonsValue.isNotEmpty;

    return NestedScrollView(
      key: _scrollKey,
      headerSliverBuilder: (_, __) => [
        SliverAppBar(
            centerTitle: true,
            pinned: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            expandedHeight: kToolbarHeight + 28 * 2,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                final safeAreaTop = MediaQuery.of(context).padding.top;
                final minHeight = safeAreaTop + kToolbarHeight;
                final maxHeight = kToolbarHeight + 28 * 2 + safeAreaTop;

                final percent = (constraints.maxHeight - minHeight) / (maxHeight - minHeight);
                final fontSize = _textStyle.fontSize ?? 16;
                final currentTextStyle = _textStyle.copyWith(
                  fontSize: fontSize + (30 - fontSize) * percent,
                );

                final textWidth = getTextSize(context, title, currentTextStyle).width;
                const startX = 28;
                final endX = MediaQuery.of(context).size.width / 2 - textWidth / 2 - startX;
                final dx = startX + endX - endX * percent;

                return Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: kToolbarHeight / 3),
                      child: Transform.translate(
                        offset: Offset(dx, constraints.maxHeight - kToolbarHeight),
                        child: Text(
                          title,
                          style: currentTextStyle,
                        ),
                      ),
                    ),
                  ],
                );
              }
            ),
          ),
      ],
      body:
        pokemons.when(
          loading: () => _buildLoading(),
            error: (e, trace) =>
              const Center(
                child: Text('Uh oh. Something went wrong!'),
            ),
            data: (data) => _buildGrid(data)
        )
          /*
          pokemonsCounter.when(
            loading: () => _buildLoading(),
            error: (e, trace) =>
              const Center(
                child: Text('Uh oh. Something went wrong!'),
              ),
            data: (data) => _buildGrid(data),
          ),
          pokemonsCounter.when(
            loading: () => _buildLoading(),
            error: (e, trace) =>
              const Center(
                child: Text('Uh oh. Something went wrong!'),
            ),
            data: (data) => _buildListView(data)
          )
          */
    );
  }

  Widget _buildGrid(List<Pokemon> pokemons) {

    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(28),
          sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              delegate: SliverChildBuilderDelegate(
                (_, index) {

                  /*
                  final AsyncValue<Pokemon> currentPokemonFromIndex = ref
                  .watch(fetchPokemonsProvider(FetchPokemonsParameters(offset: 20 * (index ~/ 20), limit: 20)))
                  .whenData((pokemons) => pokemons[index % 20]);

                  return ProviderScope(
                    overrides: [
                      // Override the Unimplemented provider
                      currentPokemonProvider.overrideWithValue(currentPokemonFromIndex)
                    ],
                    child: const SilverGridItem(),
                  );
                  */

                  final pokemon = pokemons[index];
                  return PokemonCard(
                      pokemon
                  );
                },
                childCount: pokemons.length,
              ),
            )
        ),
      ],
    );
  }

}

Widget _buildListView(List<Pokemon> pokemons) {
    return ListView.builder(
          itemCount: pokemons.length,
          itemBuilder: (context, index) {
            /*
            final AsyncValue<Pokemon> currentPokemonFromIndex = ref
                  .watch(fetchPokemonsProvider(FetchPokemonsParameters(offset: 20 * (index ~/ 20), limit: 20)))
                  .whenData((pokemons) => pokemons[index % 20]);

            return ProviderScope(
              overrides: [
                // Override the Unimplemented provider
                currentPokemonProvider.overrideWithValue(currentPokemonFromIndex)
              ],
              child: _buildListItem(),
            );
            */
            final pokemon = pokemons[index];
            return Container(
                        padding: const EdgeInsets.only(bottom: 28),
                        alignment: Alignment.center,
                        child: Text(pokemon.name),
                      );
          },
        );
  }

class _buildListItem extends ConsumerWidget {

  const _buildListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final AsyncValue<Pokemon> pokemonAsync = ref.watch(currentPokemonProvider);


    return Container(
      child: pokemonAsync.when(
                      loading: () => const Center(
                        child: Image(image: AppImages.pikachuLoader),
                      ),
                      error: (e, trace) =>
                        const Center(
                          child: Text('Uh oh. Something went wrong!'),
                      ),
                      data: (Pokemon pokemon) =>  Container(
                        padding: const EdgeInsets.only(bottom: 28),
                        alignment: Alignment.center,
                        child: Text(pokemon.name),
                      )
                    ),
    );
  }
}

Widget _buildLoading() {
    return const Center(
      child: Image(image: AppImages.pikachuLoader),
    );
}

class SilverGridItem extends ConsumerWidget {

  const SilverGridItem({Key? key}) : super(key: key);

  void _onPokemonPress(Pokemon pokemon) {
    AppNavigator.push(Routes.pokemonInfo, pokemon);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {

  final AsyncValue<Pokemon> pokemonAsync = ref.watch(currentPokemonProvider);

  return Container(
      child: pokemonAsync.when(
        loading: () => _buildLoading(),
        error: (e, trace) =>
          const Center(
            child: Text('Uh oh. Something went wrong!'),
          ),
        data: (Pokemon pokemon) =>  PokemonCard(
          pokemon,
          onPress: () => _onPokemonPress(pokemon)
        )
      )
    );
  }
}