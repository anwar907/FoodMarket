part of 'pages.dart';

class RateFood extends StatefulWidget {
  final Food food;
  RateFood({this.food});
  @override
  _RateFoodState createState() => _RateFoodState();
}

class _RateFoodState extends State<RateFood> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GeneralPage(
          title: "Ulasan makanan",
          subtitle: "ulasan makanan terbaikmu",
          onBackButtonPressed: () {
            Get.back();
          },
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                height: 600,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    CustomTabBar(
                      titles: ["Belum diulas", "History ulasan"],
                      selectedIndex: selectedIndex,
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Builder(
                      builder: (_) {
                        if (selectedIndex == 0) {
                          return BelumDiulas();
                        } else {
                          return HistoryUlasan();
                        }
                      },
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
