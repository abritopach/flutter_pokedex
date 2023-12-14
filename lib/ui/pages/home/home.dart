import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/images.dart';
import 'package:flutter_pokedex/ui/pages/home/widgets/news_card.dart';
import 'package:flutter_pokedex/ui/widgets/pokeball_background.dart';

part 'sections/header_card.dart';
part 'sections/pokemon_news.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (_, __) => [
            SliverAppBar(
              expandedHeight: _HeaderCard.height,
              floating: true,
              pinned: true,
              elevation: 0,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                centerTitle: true,
                background: _HeaderCard(),
              ),
            ),
          ],
          body: const _PokemonNews(),
        ),
      );
    }
}