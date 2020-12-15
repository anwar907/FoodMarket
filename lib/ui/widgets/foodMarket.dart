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
        trailing: Icon(
          Icons.queue,
          color: Colors.yellow,
        ),
      ),
      ListTile(
        onTap: () {
          Get.to(RateFood());
        },
        title: Text(
          "Ulasan Makanan",
          style: blackFontStyle3,
        ),
        trailing: Icon(
          Icons.food_bank_outlined,
          color: Colors.yellow,
        ),
      ),
      ListTile(
        onTap: () {
          Get.to(HelpCenter());
        },
        title: Text(
          "Bantuan",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.help_outline_rounded, color: Colors.yellow),
      ),
      ListTile(
        onTap: () {
          Get.to(PrivacyPolicy());
        },
        title: Text(
          "Privasi & Policy",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.privacy_tip_outlined, color: Colors.yellow),
      )
    ],
  );
}
