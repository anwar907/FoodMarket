part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            color: Colors.white,
            width: double.infinity,
            height: 250,
            child: Column(
              children: [
                Container(
                  width: 110,
                  height: 110,
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/photo_border.png"))),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                (context.bloc<UserCubit>().state as UserLoaded)
                                    .user
                                    .picturePath))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  (context.bloc<UserCubit>().state as UserLoaded).user.name,
                  style: blackFontStyle2,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    (context.bloc<UserCubit>().state as UserLoaded).user.email,
                    style: greyFontStyle,
                  ),
                )
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    titles: ['Akun', 'Toko Makanan'],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Builder(builder: (_) {
                    if (selectedIndex == 0) {
                      return account(context);
                    } else {
                      return foodMarket(context);
                    }
                  })
                ],
              )),
        )
      ],
    );
  }
}
