part of 'pages.dart';

class FoodPages extends StatefulWidget {
  @override
  _FoodPagesState createState() => _FoodPagesState();
}

class _FoodPagesState extends State<FoodPages> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double listWidthItem =
        MediaQuery.of(context).size.width - 2 * defaultMargin;
    return ListView(
      children: [
        //HEADER
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              color: Colors.white,
              width: double.infinity,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Food Market",
                        style: blackFontStyle1,
                      ),
                      Text(
                        "Let's get some food",
                        style:
                            greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                (context.bloc<UserCubit>().state as UserLoaded)
                                    .user
                                    .picturePath))),
                  ),
                ],
              ),
            ),
            Container(
              height: 258,
              width: double.infinity,
              child: BlocBuilder<FoodCubit, FoodState>(
                builder: (_, state) => (state is FoodLoaded)
                    ? ListView(scrollDirection: Axis.horizontal, children: [
                        Row(
                          children: state.foods
                              .map((e) => Padding(
                                    padding: EdgeInsets.only(
                                        left: (e == mockFood.first)
                                            ? defaultMargin
                                            : 0,
                                        right: defaultMargin),
                                    child: GestureDetector(
                                        onTap: () {
                                          Get.to(FoodDetailPage(
                                            transaction: Transaction(
                                                food: e,
                                                user: (context
                                                        .bloc<UserCubit>()
                                                        .state as UserLoaded)
                                                    .user),
                                            onBackButtonPressed: () {
                                              Get.back();
                                            },
                                          ));
                                        },
                                        child: FoodCard(e)),
                                  ))
                              .toList(),
                        )
                      ])
                    : Center(
                        child: loadingIndikator,
                      ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    titles: ['New Taste', 'Popular', 'Recommended'],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  BlocBuilder<FoodCubit, FoodState>(builder: (_, state) {
                    if (state is FoodLoaded) {
                      List<Food> foods = state.foods
                          .where((element) =>
                              element.types.contains((selectedIndex == 0)
                                  ? FoodTypes.new_food
                                  : (selectedIndex == 1)
                                      ? FoodTypes.popular
                                      : FoodTypes.recommended))
                          .toList();
                      return Padding(
                          padding: const EdgeInsets.fromLTRB(
                              defaultMargin, 0, defaultMargin, 16),
                          child: Column(
                              children: foods
                                  .map((e) => GestureDetector(
                                        onTap: () {
                                          Get.to(FoodDetailPage(
                                            transaction: Transaction(
                                                food: mockFood[0],
                                                user: mockUser,
                                                quantity: 2,
                                                total: (mockFood[0].price *
                                                            2 *
                                                            1.1)
                                                        .toInt() +
                                                    50000),
                                          ));
                                        },
                                        child: FoodListItem(
                                            food: e, itemWidth: listWidthItem),
                                      ))
                                  .toList()));
                    } else {
                      return Center(
                        child: loadingIndikator,
                      );
                    }
                  }),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ],
    );
  }
}
