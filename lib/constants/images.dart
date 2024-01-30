import 'package:flutter/material.dart';

const String _imagePath = 'assets/images';

class _Image extends AssetImage {
  const _Image(String fileName) : super('$_imagePath/$fileName');
}

class AppImages {
  static const pikachuLoader = _Image('pikachu_loader.gif');
  static const pokeball = _Image('pokeball.png');
  static const pokemonCardThumbnail = _Image('pokemon_card_thumbnail.png');
  static const bulbasaur = _Image('bulbasaur.png');
  static const generation1 = _Image('generation_1.png');
  static const generation2 = _Image('generation_2.png');
  static const generation3 = _Image('generation_3.png');
  static const generation4 = _Image('generation_4.png');
  static const generation5 = _Image('generation_5.png');
  static const generation6 = _Image('generation_6.png');
  static const generation7 = _Image('generation_7.png');
  static const generation8 = _Image('generation_8.png');
  static const generation9 = _Image('generation_9.png');


  static Future precacheAssets(BuildContext context) async {
    await precacheImage(pikachuLoader, context);
    await precacheImage(pokeball, context);
    await precacheImage(pokemonCardThumbnail, context);
    await precacheImage(bulbasaur, context);
    await precacheImage(generation1, context);
    await precacheImage(generation2, context);
    await precacheImage(generation3, context);
    await precacheImage(generation4, context);
    await precacheImage(generation5, context);
    await precacheImage(generation6, context);
    await precacheImage(generation7, context);
    await precacheImage(generation8, context);
    await precacheImage(generation9, context);
  }
}