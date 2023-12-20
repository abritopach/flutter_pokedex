part of '../pokedex.dart';

class _PokemonGrid extends ConsumerStatefulWidget {
  const _PokemonGrid();

  @override
  ConsumerState createState() => _PokemonGridState();
}

class _PokemonGridState extends ConsumerState {

  final GlobalKey<NestedScrollViewState> _scrollKey = GlobalKey();

  static const TextStyle _textStyle = TextStyle(
    // color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: kToolbarHeight / 3,
    height: 1,
  );

  static const title = 'Pokedex';
  @override
  Widget build(BuildContext context) {

    final AsyncValue<List<Pokemon>> pokemons = ref.watch(getPokemonsProvider);

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
      body: Center(
        child: pokemons.when(
        data: (data) => ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title: Text(data[index].name),
                            );
                          },
        ),
        error: (e, s) =>
        const Center(
          child: Text('Uh oh. Something went wrong!'),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      ),
    );
  }

/*
  Widget _buildGrid() {
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
                  PokemonCard(
                      pokemon,
                      onPress: () => _onPokemonPress(pokemon),
                  );
                  });
                },
                childCount: numberOfPokemons,
              ),
            );
          }),
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
}