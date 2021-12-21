import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'widgets/texts.dart';
import 'widgets/buttons.dart';
import 'widgets/cards.dart';
import './pages/register.dart';

void main() => runApp(lugat_run());

// Themes

class MyAppThemes {
  static ThemeData appThemeLight() {
    return ThemeData(
      scaffoldBackgroundColor: HexColor('#FFFFFF'),
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      iconTheme: IconThemeData(
        color: Colors.indigo.shade500,
      ),
    );
  }

  static ThemeData appThemeDark() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      iconTheme: IconThemeData(
        color: Colors.indigo.shade500,
      ),
    );
  }
}

// Home Page

class lugat_run extends StatefulWidget {
  @override
  _lugat_runState createState() => _lugat_runState();
}

class _lugat_runState extends State<lugat_run> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/register': (context) => const RegisterPage(),
      },
      theme: MyAppThemes.appThemeLight(),
      home: Scaffold(
        appBar: LugatAppBar(),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBar("Aramak istediğiniz terimi girin"),
              Padding(
                padding: EdgeInsets.only(top: 32, bottom: 8),
                child: DescriptionText("Öne çıkan kategoriler"),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PopularCategoryCard(
                      "https://www.upload.ee/image/13731286/ai.png",
                      "Yapay Zeka",
                    ),
                    PopularCategoryCard(
                      "https://www.upload.ee/image/13731286/ai.png",
                      "Pamuk Zeka",
                    ),
                    PopularCategoryCard(
                      "https://www.upload.ee/image/13731286/ai.png",
                      "Demir Zeka",
                    ),
                    PopularCategoryCard(
                      "https://www.upload.ee/image/13731286/ai.png",
                      "Über Zeka",
                    ),
                    PopularCategoryCard(
                      "https://www.upload.ee/image/13731286/ai.png",
                      "Fahri Zeka",
                    ),
                    PopularCategoryCard(
                      "https://www.upload.ee/image/13731286/ai.png",
                      "Soyut Zeka",
                    ),
                  ],
                ),
              ),
              CategoryCard("Tasarım", "128",
                  "https://www.upload.ee/image/13731805/designCategory.png"),
              Padding(
                padding: const EdgeInsets.only(top: 32, bottom: 2),
                child: DescriptionText("Kategoriler"),
              ),
              CategoryTitle("Tasarım"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryTermCard(
                        "https://www.upload.ee/image/13731924/prototypeTerm.png",
                        "Prototip",
                        "Kerem Alan"),
                    CategoryTermCard(
                        "https://www.upload.ee/image/13731924/prototypeTerm.png",
                        "Frototip",
                        "Gökhan Falan"),
                    CategoryTermCard(
                        "https://www.upload.ee/image/13731924/prototypeTerm.png",
                        "Brototip",
                        "Türkmen Köyhan"),
                    CategoryTermCard(
                        "https://www.upload.ee/image/13731924/prototypeTerm.png",
                        "Krototip",
                        "Uğur Taylan"),
                  ],
                ),
              ),
              CategoryTitle("Yazılım"),
              Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryTermCard(
                          "https://www.upload.ee/image/13731960/softwareTerm.png",
                          "Prototip",
                          "Kerem Alan"),
                      CategoryTermCard(
                          "https://www.upload.ee/image/13731960/softwareTerm.png",
                          "Frototip",
                          "Gökhan Falan"),
                      CategoryTermCard(
                          "https://www.upload.ee/image/13731960/softwareTerm.png",
                          "Brototip",
                          "Türkmen Köyhan"),
                      CategoryTermCard(
                          "https://www.upload.ee/image/13731960/softwareTerm.png",
                          "Krototip",
                          "Uğur Taylan"),
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

// App Bar

class LugatAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: const Padding(
        padding: EdgeInsets.only(left: 12),
        child: Text(
          "Lügat",
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
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => RegisterPage()),
              );
            },
            child: Icon(Icons.menu),
          ),
        )
      ],
    );
  }
}

Widget DescriptionText(descText) {
  return Text(
      "${descText}".toUpperCase(),
      style: TextStyle(
        fontSize: 12,
        height: 0.2,
        color: HexColor('#BFBFBF'),
      ),
  );
}

Widget SearchBar(placeHold) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        width: 380,
        height: 40,
        child: CupertinoSearchTextField(
          placeholder: "${placeHold}",
          onChanged: (String value) {
            print('The text has changed to: $value');
          },
          onSubmitted: (String value) {
            print('Submitted text: $value');
          },
        ),
      ),
    ],
  );
}
