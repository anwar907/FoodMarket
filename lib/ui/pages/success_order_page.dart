part of 'pages.dart';

class SuccessOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IlustrationPage(
        title: "Anda Sudah Memesan!!",
        subtitle:
            "Tetaplah dirumah saat kita datang\nnantikan makanan terbaikmu",
        picturePath: "assets/bike.png",
        buttonTitle1: "Tambah makanan lain",
        buttonTitle2: "Lihat Orderan",
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
