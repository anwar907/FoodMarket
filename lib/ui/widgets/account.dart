part of 'widgets.dart';

Widget account(BuildContext context) {
  return Column(
    children: [
      ListTile(
        onTap: () {
          Get.to(EditProfilPage());
        },
        title: Text(
          "Edit Akun",
          style: blackFontStyle3,
        ),
        trailing: Icon(
          Icons.border_color,
          color: Colors.yellow,
        ),
      ),
      ListTile(
        onTap: () {
          Get.to(EditPassowrdAddress());
        },
        title: Text(
          "Password",
          style: blackFontStyle3,
        ),
        trailing: Icon(
          Icons.lock,
          color: Colors.yellow,
        ),
      ),
      ListTile(
        onTap: () {},
        title: Text(
          "Pembayaran",
          style: blackFontStyle3,
        ),
        trailing: Icon(
          Icons.payment,
          color: Colors.yellow,
        ),
      ),
      ListTile(
        title: Text(
          "Keluar",
          style: blackFontStyle3,
        ),
        trailing: Icon(
          Icons.power_settings_new,
          color: Colors.red,
        ),
      )
    ],
  );
}
