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
    // color: Colors.black,
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
    }
  }

  void _onPokemonPress(Pokemon pokemon) {

    print("Selected pokemon");
    print(pokemon);

    AppNavigator.push(Routes.pokemonInfo, pokemon);
  }

  @override
  Widget build(BuildContext context) {

    final AsyncValue<int> pokemonsCounter = ref.watch(fetchPokemonsCountProvider);
    // final AsyncValue<List<Pokemon>> pokemons = ref.watch(fetchPokemonsProvider(FetchPokemonsParameters(offset: 0, limit: 20)));


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
          /*
          pokemons.when(
            loading: () => _buildLoading(),
            error: (e, trace) =>
              const Center(
                child: Text('Uh oh. Something went wrong!'),
              ),
            data: (data) => _buildGrid(data),
          ),
          */
          pokemonsCounter.when(
            loading: () => _buildLoading(),
            error: (e, trace) =>
              const Center(
                child: Text('Uh oh. Something went wrong!'),
            ),
            data: (data) => _buildListView(data)
          )
    );
  }

  Widget _buildLoading() {
    return const Center(
      child: Image(image: AppImages.pikachuLoader),
    );
  }

/*
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
                  var pokemon = pokemons[index];
                  return PokemonCard(
                    pokemon,
                    onPress: () => _onPokemonPress(pokemon)
                  );
                },
                childCount: pokemons.length,
              ),
            )
        ),
        SliverToBoxAdapter(
          child: Container(
              padding: const EdgeInsets.only(bottom: 28),
              alignment: Alignment.center,
              child: const Image(image: AppImages.pikachuLoader),
            )
        ),
      ],
    );
  }
  */

  Widget _buildGrid(int pokemonsCounter) {

    final AsyncValue<PokemonResult> pokemonAsync = ref.watch(currentPokemonProvider);

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
                  final AsyncValue<PokemonResult> currentPokemonFromIndex = ref
                  .watch(fetchPokemonsProvider2(FetchPokemonsParameters(offset: 20 * (index ~/ 20), limit: 20)))
                  .whenData((pageData) => pageData.results[index % 20]);

                  return ProviderScope(
                    overrides: [
                      // Override the Unimplemented provider
                      currentPokemonProvider.overrideWithValue(currentPokemonFromIndex)
                    ],
                    child: pokemonAsync.when(
                      loading: () => _buildLoading(),
                      error: (e, trace) =>
                        const Center(
                          child: Text('Uh oh. Something went wrong!'),
                      ),
                      data: (PokemonResult pokemon) =>  Container(
                        padding: const EdgeInsets.only(bottom: 28),
                        alignment: Alignment.center,
                        child: Text(pokemon.name),
                      )
                    ),
                  );
                },
                childCount: pokemonsCounter,
              ),
            )
        ),
      ],
    );
  }

  Widget _buildListView(int pokemonsCounter) {

    print(pokemonsCounter);
    print('_buildListView');

    return ListView.builder(
          itemCount: pokemonsCounter,
          itemBuilder: (context, index) {

            print('ListView.builder');
            print(index);

            final AsyncValue<PokemonResult> currentPokemonFromIndex = ref
                  .watch(fetchPokemonsProvider2(FetchPokemonsParameters(offset: 20 * (index ~/ 20), limit: 20)))
                  .whenData((pageData) => pageData.results[index % 20]);

            return ProviderScope(
              overrides: [
                // Override the Unimplemented provider
                currentPokemonProvider.overrideWithValue(currentPokemonFromIndex)
              ],
              child: _buildListItem(),
            );
          },
        );
  }

}

class _buildListItem extends ConsumerWidget {

  const _buildListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final AsyncValue<PokemonResult> pokemonAsync = ref.watch(currentPokemonProvider);


    return Container(
      child: pokemonAsync.when(
                      loading: () => const Center(
                        child: Image(image: AppImages.pikachuLoader),
                      ),
                      error: (e, trace) =>
                        const Center(
                          child: Text('Uh oh. Something went wrong!'),
                      ),
                      data: (PokemonResult pokemon) =>  Container(
                        padding: const EdgeInsets.only(bottom: 28),
                        alignment: Alignment.center,
                        child: Text(pokemon.name),
                      )
                    ),
    );
  }
}