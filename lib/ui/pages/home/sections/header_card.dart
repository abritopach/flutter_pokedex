part of '../home.dart';

const List<Category> categories = [
  Category(name: 'Pokedex', color: AppColors.teal, route: Routes.pokedex),
  Category(name: 'Moves', color: AppColors.red, route: Routes.pokedex),
  Category(name: 'Abilities', color: AppColors.blue, route: Routes.pokedex),
  Category(name: 'Items', color: AppColors.yellow, route: Routes.items),
  Category(name: 'Locations', color: AppColors.purple, route: Routes.pokedex),
  Category(name: 'Type Effects', color: AppColors.brown, route: Routes.typeEffects),
];

class HeaderCard extends StatefulWidget {

  const HeaderCard({super.key});
  static const double height = 582;

  @override
  State<StatefulWidget> createState() => _HeaderCardState();

}


class _HeaderCardState extends State<HeaderCard> {

  void _onSelectCategory(Category category) {
    AppNavigator.push(category.route);
  }

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
            _buildTitle(),
            _buildSearchBar(),
            _buildCategories(context),
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

  Widget _buildCategories(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(28, 42, 28, 62),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        childAspectRatio: 2.6,
        mainAxisSpacing: 15,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return CategoryCard(
          categories[index],
          onPress: () => _onSelectCategory(categories[index]),
        );
      },
    );
  }

}

Widget _buildSearchBar() {
  return
    Padding(
      padding: const EdgeInsets.only(left: 28.0, right: 28.0),
        child: Column(
          children: [
            SearchAnchor(
              builder: (BuildContext context, SearchController controller) {
                return SearchBar(
                  controller: controller,
                  padding: const MaterialStatePropertyAll<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 18, vertical: 8)),
                  leading: const Icon(Icons.search),
                  hintText: 'Search Pokemon, Move, Ability etc',
                  onTap: () {
                    controller.openView();
                  },
                  onChanged: (_) {
                    controller.openView();
                  }
                );
              }, suggestionsBuilder: (BuildContext context, SearchController controller) {
                  return List<ListTile>.generate(5, (int index) {
                    final String item = 'item $index';
                    return ListTile(
                      title: Text(item),
                      onTap: () {
                        controller.closeView(item);
                      },
                    );
                  });
              }
            )
          ]
        )
    );
}
