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
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      ListTile(
        onTap: () {
          Get.to(EditHomeAddress());
        },
        title: Text(
          "Alamat Rumah",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      ListTile(
        onTap: () {
          Get.to(EditPassowrdAddress());
        },
        title: Text(
          "Password",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      ListTile(
        title: Text(
          "Pembayaran",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      )
    ],
  );
}
