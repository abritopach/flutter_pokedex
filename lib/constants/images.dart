import 'package:flutter/material.dart';

const String _imagePath = 'assets/images';

class _Image extends AssetImage {
  const _Image(String fileName) : super('$_imagePath/$fileName');
}

class AppImages {
  static const pikachuLoader = _Image('pikachu_loader.gif');
  static const pokeball = _Image('pokeball.png');
  static const pokemonCardThumbnail = _Image('pokemon_card_thumbnail.png');

  static Future precacheAssets(BuildContext context) async {
    await precacheImage(pikachuLoader, context);
    await precacheImage(pokeball, context);
    await precacheImage(pokemonCardThumbnail, context);
  }
}