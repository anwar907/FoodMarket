part of "shared.dart";

Color greyColor = "8D92A3".toColor();
Color mainColor = "FFC700".toColor();

Widget loadingIndikator = SpinKitFadingCircle(
  size: 45,
  color: mainColor,
);

TextStyle greyFontStyle = GoogleFonts.poppins().copyWith(color: greyColor);
TextStyle blackFontStyle1 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500);
TextStyle blackFontStyle2 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
TextStyle blackFontStyle3 = GoogleFonts.poppins().copyWith(color: Colors.black);
const double defaultMargin = 24;
