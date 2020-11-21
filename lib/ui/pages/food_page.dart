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
                                "https://4.bp.blogspot.com/-wJ5prQ0K8qI/WsQ9UKn4xII/AAAAAAAABVI/cVns-SfXZy8hj4G9LBv55aLpCXLD3BvZACLcBGAs/s320/sembalun%2B2018_101.jpg"))),
                  ),
                ],
              ),
            ),
            Container(
              height: 258,
              width: double.infinity,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Row(
                  children: mockFood
                      .map((e) => Padding(
                            padding: EdgeInsets.only(
                                left: (e == mockFood.first) ? defaultMargin : 0,
                                right: defaultMargin),
                            child: FoodCard(e),
                          ))
                      .toList(),
                )
              ]),
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
                  Builder(builder: (_) {
                    List<Food> foods = (selectedIndex == 0)
                        ? mockFood
                        : (selectedIndex == 1)
                            ? []
                            : [];
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
                                              total:
                                                  (mockFood[0].price * 2 * 1.1)
                                                          .toInt() +
                                                      50000),
                                        ));
                                      },
                                      child: FoodListItem(
                                          food: e, itemWidth: listWidthItem),
                                    ))
                                .toList()));
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
