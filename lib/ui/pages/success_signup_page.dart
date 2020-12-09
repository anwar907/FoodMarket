part of 'pages.dart';

class SuccessSignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IlustrationPage(
        title: "Yes! Selesai",
        subtitle:
            "Sekarang anda sudah bisa pesan makanan \ncari makanan sehat dan bergizi",
        picturePath: "assets/food_wishes.png",
        buttonTitle1: "Cari Makanan",
        buttonTap1: () {
          Get.to(SignInPage());
        },
      ),
    );
  }
}
