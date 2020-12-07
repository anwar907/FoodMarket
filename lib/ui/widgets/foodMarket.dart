part of 'widgets.dart';

Widget foodMarket(BuildContext context) {
  return Column(
    children: [
      ListTile(
        onTap: () {
          Get.to(AddFoodPages());
        },
        title: Text(
          "Add Food",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      ListTile(
        onTap: () {
          Get.to(RateFoodPages());
        },
        title: Text(
          "Rating Food",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      ListTile(
        onTap: () {
          Get.to(HelpCenter());
        },
        title: Text(
          "Help Center",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      ListTile(
        onTap: () {
          Get.to(PrivacyPolicy());
        },
        title: Text(
          "Privacy & Policy",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      )
    ],
  );
}
