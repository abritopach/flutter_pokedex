import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/colors.dart';
import 'package:flutter_pokedex/constants/images.dart';
import 'package:flutter_pokedex/domain/entities/generation.dart';

class GenerationCard extends StatelessWidget {
  const GenerationCard(this.generation, {super.key});

  final Generation generation;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final height = constraints.maxHeight;

      return InkWell(
    child: Container(
        decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 8),
              blurRadius: 15,
              color: AppColors.black.withOpacity(0.12),
            ),
          ],
        ),
        child: Stack(
          children: <Widget>[
            Container(
              constraints: const BoxConstraints.expand(),
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    generation.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                              child: Image.asset(
                                generation.imagePath,
                                fit: BoxFit.contain,
                                width: height * 0.41,
                                height: height * 0.41,
                              ),
                            ),
                    ]
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: -height * 0.136,
              right: -height * 0.03,
              child: Image(
                image: AppImages.pokeball,
                width: height * 0.754,
                height: height * 0.754,
                color: AppColors.black.withOpacity(0.05),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        print("Click event on Container");
        print(generation.title);
      }
      );
    });
  }
}