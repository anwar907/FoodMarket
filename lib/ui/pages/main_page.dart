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
              Center(
                  child: IlustrationPage(
                title: "Ouch! Hungry",
                subtitle: "Seems you like have not\nordered any food yet",
                picturePath: 'assets/love_burger.png',
                buttonTitle1: "Find Food",
                buttonTap1: () {},
                buttonTap2: () {},
                buttonTitle2: 'Oke',
              )),
              Center(
                child: Text("Profile"),
              ),
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
