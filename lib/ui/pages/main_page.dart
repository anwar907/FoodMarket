part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectPage = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: 'FAFAFC'.toColor(),
            ),
          ),
          SafeArea(
              child: PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                selectPage = index;
              });
            },
            children: [
              Center(
                child: FoodPages(),
              ),
              Center(child: OrderHistoryPage()),
              Center(child: ProfilePage()),
            ],
          )),
          Align(
              alignment: Alignment.bottomCenter,
              child: CustomButtomNavbar(
                selectedIndex: selectPage,
                onTap: (index) {
                  setState(() {
                    selectPage = index;
                  });
                  pageController.jumpToPage(selectPage);
                },
              ))
        ],
      ),
    );
  }
}
