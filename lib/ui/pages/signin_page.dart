part of "pages.dart";

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Sign In',
      subtitle: 'Fint your best ever meal',
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Email Address",
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
                  hintText: 'Type your email address'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Password",
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
              controller: passwordController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type your Password address'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 45,
                margin: EdgeInsets.only(top: 24),
                // padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: isLoading
                    ? loadingIndikator
                    : RaisedButton(
                        onPressed: () async {
                          setState(() {
                            isLoading = true;
                          });

                          await context.bloc<UserCubit>().signIn(
                              emailController.text, passwordController.text);
                          UserState state = context.bloc<UserCubit>().state;

                          if (state is UserLoaded) {
                            context.bloc<FoodCubit>().getFood();
                            context.bloc<TransactionCubit>().getTransaction();
                            Get.to(MainPage());
                          } else {
                            Get.snackbar(
                              "",
                              "",
                              backgroundColor: 'D9435E'.toColor(),
                              icon: Icon(MdiIcons.closeCircleOutline),
                              messageText: Text(
                                  (state as UserLoadingField).message,
                                  style:
                                      GoogleFonts.poppins(color: Colors.white)),
                              titleText: Text("Sign In Failed",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)),
                            );
                            setState(() {
                              isLoading = false;
                            });
                          }
                        },
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        color: mainColor,
                        child: Text("Sign In",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 150,
                height: 45,
                margin: EdgeInsets.only(top: 24),
                // padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: isLoading
                    ? loadingIndikator
                    : RaisedButton(
                        onPressed: () {
                          Get.to(SignUpPage());
                        },
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        color: greyColor,
                        child: Text("Create Account",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w500)),
                      ),
              )
            ],
          )
        ],
      ),
    );
  }
}
