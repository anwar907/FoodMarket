part of 'pages.dart';

class SuccessSignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IlustrationPage(
        title: "Yeay! Completed",
        subtitle: "Now you are able to order \nsome fods as a self reward",
        picturePath: "assets/food_wishes.png",
        buttonTitle1: "Find Foods",
        buttonTap1: () {
          Get.to(SignInPage());
        },
      ),
    );
  }
}
