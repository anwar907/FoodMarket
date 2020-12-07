part of 'widgets.dart';

Widget account(BuildContext context) {
  return Column(
    children: [
      ListTile(
        onTap: () {
          Get.to(EditProfilPage());
        },
        title: Text(
          "Edit Profile",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      ListTile(
        onTap: () {
          Get.to(EditHomeAddress());
        },
        title: Text(
          "Home Address",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      ListTile(
        onTap: () {
          Get.to(EditPassowrdAddress());
        },
        title: Text(
          "Security",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      ListTile(
        title: Text(
          "Payments",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      )
    ],
  );
}
