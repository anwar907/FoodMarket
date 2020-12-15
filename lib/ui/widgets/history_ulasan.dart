part of 'widgets.dart';

class HistoryUlasan extends StatefulWidget {
  final Food food;
  HistoryUlasan({this.food});
  @override
  _HistoryUlasanState createState() => _HistoryUlasanState();
}

class _HistoryUlasanState extends State<HistoryUlasan> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double listWidthItem =
        MediaQuery.of(context).size.width - 2 * defaultMargin;
    return Column(
      children: [
        BlocBuilder<FoodCubit, FoodState>(builder: (_, state) {
          if (state is FoodLoaded) {
            List<Food> foods = state.foods
                .where((element) => element.types.contains(((selectedIndex == 0)
                    ? FoodTypes.new_food
                    : (selectedIndex == 1)
                        ? FoodTypes.popular
                        : (selectedIndex == 2)
                            ? FoodTypes.recommended
                            : (selectedIndex == 3)
                                ? FoodTypes.minuman
                                : FoodTypes.minuman)))
                .toList();
            return Padding(
                padding: const EdgeInsets.fromLTRB(
                    defaultMargin, 0, defaultMargin, 16),
                child: Column(
                    children: foods
                        .map((e) => GestureDetector(
                              onTap: () {},
                              child: FoodListItem(
                                food: e,
                                itemWidth: listWidthItem,
                              ),
                            ))
                        .toList()));
          } else {
            return Center(
              child: loadingIndikator,
            );
          }
        }),
      ],
    );
  }
}
