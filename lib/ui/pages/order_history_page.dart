part of 'pages.dart';

class OrderHistoryPage extends StatefulWidget {
  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int selectedIndex = 0;
  List<Transaction> inProgress = mockTransaction
      .where((element) =>
          element.status == TransactionStatus.on_delivery ||
          element.status == TransactionStatus.pendding)
      .toList();
  List<Transaction> past = mockTransaction
      .where((element) =>
          element.status == TransactionStatus.delivered ||
          element.status == TransactionStatus.cancelled)
      .toList();
  @override
  Widget build(BuildContext context) {
    if (inProgress.length == 0 && past.length == 0) {
      return IlustrationPage(
        title: "Ouch! Hungry",
        subtitle: "Seems you like have not\nordered any food yet",
        picturePath: 'assets/love_burger.png',
        buttonTitle1: "Find Food",
        buttonTap1: () {},
      );
    } else {
      double listItemWidth =
          MediaQuery.of(context).size.width - 2 * defaultMargin;
      return ListView(
        children: [
          Column(
            children: [
              //Top
              Container(
                height: 100,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: defaultMargin),
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your Orders",
                      style: blackFontStyle1,
                    ),
                    Text("Wait for the best meal",
                        style:
                            greyFontStyle.copyWith(fontWeight: FontWeight.w300))
                  ],
                ),
              ),
              //Body
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    CustomTabBar(
                      titles: ["In Progress", "Pass Orders"],
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
                    Column(
                        children: (selectedIndex == 0 ? inProgress : past)
                            .map((e) => Padding(
                                  padding: const EdgeInsets.only(
                                      right: defaultMargin,
                                      left: defaultMargin,
                                      bottom: 16),
                                  child: OrderListItem(
                                      transaction: e, itemWidth: listItemWidth),
                                ))
                            .toList())
                  ],
                ),
              )
            ],
          )
        ],
      );
    }
  }
}