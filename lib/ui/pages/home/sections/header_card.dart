part of '../home.dart';

class _HeaderCard extends StatelessWidget {
  static const double height = 582;

  @override
  Widget build(BuildContext context) {

    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
      ),
      child: PokeballBackground(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      // Function to toggle theme
                    },
                    padding: const EdgeInsets.only(
                      left: 28,
                    ),
                    icon: const Icon(
                      Icons.wb_sunny_outlined,
                      color:Colors.yellow,
                      size: 25,
                    )),
              ),
            ),
            _buildTitle()
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Expanded(
      child: Container(
        constraints: const BoxConstraints.expand(),
        padding: const EdgeInsets.all(28),
        alignment: Alignment.bottomLeft,
        child: const Text(
          'What Pokemon\nare you looking for?',
          style: TextStyle(
            fontSize: 30,
            height: 1.6,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }

}