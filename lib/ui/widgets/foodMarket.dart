part of 'widgets.dart';

Widget foodMarket(BuildContext context) {
  return Column(
    children: [
      ListTile(
        title: Text(
          "Rate App",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      ListTile(
        title: Text(
          "Help Center",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      ListTile(
        title: Text(
          "Privacy & Policy",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      ListTile(
        title: Text(
          "Terms & COnditions",
          style: blackFontStyle3,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      )
    ],
  );
}
