part of 'pages.dart';

class SuccessOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IlustrationPage(
        title: "You've Made Order",
        subtitle: "Just Stey at home while we are\npreparing our best foods",
        picturePath: "assets/bike.png",
        buttonTitle1: "Order other Food",
        buttonTitle2: "View my Order",
        buttonTap1: () {
          Get.offAll(MainPage());
        },
        buttonTap2: () {
          Get.offAll(MainPage(
            initialPage: 1,
          ));
        },
      ),
    );
  }
}
