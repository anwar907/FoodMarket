part of 'widgets.dart';

Widget account(BuildContext context) {
  return Column(
    children: [
      ListTile(
        title: Text(
          "Edit Profile",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      ListTile(
        title: Text(
          "Home Address",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      ListTile(
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
