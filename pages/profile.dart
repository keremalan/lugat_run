import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:lugat_run/main.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import '../widgets/buttons.dart';
import '../widgets/texts.dart';
import 'package:sizer/sizer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: HexColor('#FFFFFF'),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              LugatAppBarProfile(),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 34),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: ProfileHead(userName: 'Kerem Alan', userTitle: 'Arayüz Tasarımcısı', userCompany: 'Geight', userNotificationValue: '32',),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 34),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            HeadlineText('Katkılarım', '#000000'),
                            Caption2Text('Tümünü gör', '#001FC6'),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ProfileOverviewCard(overviewCategoryColor: '#007AFF', overviewCategoryName: 'Tasarım', overviewCategoryValue: '29',),
                            ProfileOverviewCard(overviewCategoryColor: '#34C85A', overviewCategoryName: 'Yazılım', overviewCategoryValue: '17',),
                            ProfileOverviewCard(overviewCategoryColor: '#FFCC00', overviewCategoryName: 'Metaverse', overviewCategoryValue: '4',),
                          ],
                        ),
                      ),
                      ProfileOverviewSubText(),
                      Column(
                        children: [
                          TermOverviewCard(termImageUrl: 'https://www.upload.ee/image/13739165/prototypeTerm.png', termName: 'Prototip', termDescription: 'Ürün geliştirme sürecinde, ürün..',),
                          Divider(),
                          TermOverviewCard(termImageUrl: 'https://www.upload.ee/image/13739165/prototypeTerm.png', termName: 'Prototip', termDescription: 'Ürün geliştirme sürecinde, ürün..',),
                          Divider(),
                          TermOverviewCard(termImageUrl: 'https://www.upload.ee/image/13739165/prototypeTerm.png', termName: 'Prototip', termDescription: 'Ürün geliştirme sürecinde, ürün..',),
                          Divider(),
                          TermOverviewCard(termImageUrl: 'https://www.upload.ee/image/13739165/prototypeTerm.png', termName: 'Prototip', termDescription: 'Ürün geliştirme sürecinde, ürün..',),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TermOverviewCard extends StatelessWidget {
  TermOverviewCard({
    Key? key,
    required this.termImageUrl,
    required this.termName,
    required this.termDescription,
  }) : super(key: key);
  String termImageUrl;
  String termName;
  String termDescription;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  "$termImageUrl",
                  height: 40,
                  width: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SubheadText('$termName', '#000000'),
                    Caption2Text('$termDescription', '#808080'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ProfileOverviewSubText extends StatelessWidget {
  const ProfileOverviewSubText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 22),
          child: DescriptionText('Son katkılarım'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Container(
            height: 30,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                width: 1,
                color: HexColor('#F2F2F2'),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network("https://www.upload.ee/thumb/13739155/threedot.png"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProfileOverviewCard extends StatelessWidget {
  ProfileOverviewCard({
    Key? key,
    required this.overviewCategoryColor,
    required this.overviewCategoryName,
    required this.overviewCategoryValue,
  }) : super(key: key);
  String overviewCategoryColor;
  String overviewCategoryName;
  String overviewCategoryValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 8.h,
        width: 31.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
            border: Border.all(
              width: 1,
              color: HexColor('#F2F2F2'),
            )
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: HexColor('$overviewCategoryColor'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BodyText('$overviewCategoryName', '#000000'),
                  Caption1Text('$overviewCategoryValue', '#808080'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileHead extends StatelessWidget {
  ProfileHead({
    Key? key,
    required this.userName,
    required this.userTitle,
    required this.userCompany,
    required this.userNotificationValue,
  }) : super(key: key);
  String userName;
  String userTitle;
  String userCompany;
  String userNotificationValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Title2Text('$userName', '#000000'),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: Caption2Text(
                      '$userTitle', '#A7A7A7'),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: Caption2Text('-', '#A7A7A7'),
                ),
                Caption2Text('$userCompany', '#A7A7A7'),
              ],
            ),
          ],
        ),
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                "https://www.upload.ee/image/13739086/profile.jpeg",
                height: 50,
                width: 50,
              ),
            ),
            Positioned(
              child: Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.red,
                ),
                child: Center(
                  child: Text("${userNotificationValue}",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700)),
                ),
              ),
              top: 26,
            ),
          ],
        ),
      ],
    );
  }
}

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: HexColor('#FFFFFF'),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              LugatAppBarProfileSettings(),
              Container(
                child: Column(
                  children: [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget DescriptionText(descText) {
  return Text(
    "$descText".toUpperCase(),
    style: TextStyle(
      fontSize: 12,
      height: 0.2,
      color: HexColor('#BFBFBF'),
    ),
  );
}

class LugatAppBarProfile extends StatelessWidget
    implements PreferredSizeWidget {
  LugatAppBarProfile({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: const Padding(
        padding: EdgeInsets.only(left: 12),
        child: Text(
          "Profil",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProfileSettings()),
              );
            },
            child: const Icon(Icons.settings),
          ),
        ),
      ],
    );
  }
}

class LugatAppBarProfileSettings extends StatelessWidget
    implements PreferredSizeWidget {
  LugatAppBarProfileSettings({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: const Padding(
        padding: EdgeInsets.only(left: 12),
        child: Text(
          "Profil Ayarlarım",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
