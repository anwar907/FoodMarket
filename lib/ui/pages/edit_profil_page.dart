part of 'pages.dart';

class EditProfilPage extends StatefulWidget {
  @override
  _EditProfilPageState createState() => _EditProfilPageState();
}

class _EditProfilPageState extends State<EditProfilPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
        title: 'Edit Akun',
        subtitle: 'Gunakan akun yang valid',
        onBackButtonPressed: () {
          Get.back();
        },
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(defaultMargin, 10, defaultMargin, 6),
              child: Text(
                "Nama",
                style: blackFontStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black)),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: greyFontStyle,
                    hintText: 'masukan nama lengkap'),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
              child: Text(
                "Alamat Email",
                style: blackFontStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black)),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: greyFontStyle,
                    hintText: 'masukan alamat email'),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
              child: Text(
                "Nomor HP",
                style: blackFontStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black)),
              child: TextField(
                controller: phoneController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: greyFontStyle,
                    hintText: 'masukan nomor hp'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 45,
                  margin: EdgeInsets.only(top: 24),
                  child: RaisedButton(
                    onPressed: () {},
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: mainColor,
                    child: Text("Simpan",
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
