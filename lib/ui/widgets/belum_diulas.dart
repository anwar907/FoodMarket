part of 'widgets.dart';

class BelumDiulas extends StatefulWidget {
  @override
  _BelumDiulasState createState() => _BelumDiulasState();
}

class _BelumDiulasState extends State<BelumDiulas> {
  int selectedIndex = 0;
  
  @override
  Widget build(BuildContext context) {
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
                              child: RateFoodPages(
                                food: e,
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
