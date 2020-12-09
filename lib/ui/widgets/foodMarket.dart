part of 'widgets.dart';

Widget foodMarket(BuildContext context) {
  return Column(
    children: [
      ListTile(
        onTap: () {
          Get.to(AddFoodPages());
        },
        title: Text(
          "Tambah Makanan",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      ListTile(
        onTap: () {
          Get.to(RateFoodPages());
        },
        title: Text(
          "Ulasan Makanan",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      ListTile(
        onTap: () {
          Get.to(HelpCenter());
        },
        title: Text(
          "Bantuan",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      ListTile(
        onTap: () {
          Get.to(PrivacyPolicy());
        },
        title: Text(
          "Privasi & Policy",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      )
    ],
  );
}
