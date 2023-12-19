part of '../pokedex.dart';

class _PokemonGrid extends StatefulWidget {
  const _PokemonGrid();

  @override
  _PokemonGridState createState() => _PokemonGridState();
}

class _PokemonGridState extends State<_PokemonGrid> {

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
      body: const Center(
        child: Text('Pokemons'),
      ),
    );
  }

  Widget _buildGrid() {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(28)
        )
      ],
    );
  }
}