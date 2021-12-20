import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

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
      theme: MyAppThemes.appThemeLight(),
      home: Scaffold(
        appBar: LugatAppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBar("Aramak istediğiniz terimi girin"),
              Padding(
                padding: EdgeInsets.only(bottom: 6),
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
              Column(
                children: [
                  FilledButton("#FFFFFF", "Kelime ekle"),
                ],
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
    );
  }
}

Widget DescriptionText(descText) {
  return Padding(
    padding: EdgeInsets.only(top: 22, bottom: 6),
    child: Text(
      "${descText}".toUpperCase(),
      style: TextStyle(
        fontSize: 12,
        height: 0.2,
        color: HexColor('#BFBFBF'),
      ),
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

Widget PopularCategoryCard(categoryImgUrl, categoryName) {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: HexColor("#BEBEBE"),
          width: 0.5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                "${categoryImgUrl}",
                height: 50,
                width: 50,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 4, left: 4, bottom: 7),
            child: Caption2Text("${categoryName}", "#BEBEBE"),
          ),
        ],
      ),
    ),
  );
}

Widget Caption2Text(text, hexColor) {
  return Text(
    "${text}",
    style: TextStyle(
      fontSize: 13,
      color: HexColor("${hexColor}"),
    ),
  );
}

Widget Caption1Text(text, hexColor) {
  return Text(
    "${text}",
    style: TextStyle(
      fontSize: 12,
      color: HexColor("${hexColor}"),
    ),
  );
}

Widget FootnoteText(text, hexColor) {
  return Text(
    "${text}",
    style: TextStyle(
      fontSize: 13,
      color: HexColor("${hexColor}"),
    ),
  );
}

Widget SubheadText(text, hexColor) {
  return Text(
    "${text}",
    style: TextStyle(
      fontSize: 15,
      color: HexColor("${hexColor}"),
    ),
  );
}

Widget CalloutText(text, hexColor) {
  return Text(
    "${text}",
    style: TextStyle(
      fontSize: 16,
      color: HexColor("${hexColor}"),
    ),
  );
}

Widget BodyText(text, hexColor) {
  return Text(
    "${text}",
    style: TextStyle(
      fontSize: 17,
      color: HexColor("${hexColor}"),
    ),
  );
}

Widget HeadlineText(text, hexColor) {
  return Text(
    "${text}",
    style: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: HexColor("${hexColor}"),
    ),
  );
}

Widget Title3Text(text, hexColor) {
  return Text(
    "${text}",
    style: TextStyle(
      fontSize: 20,
      color: HexColor("${hexColor}"),
    ),
  );
}

Widget Title2Text(text, hexColor) {
  return Text(
    "${text}",
    style: TextStyle(
      fontSize: 22,
      color: HexColor("${hexColor}"),
    ),
  );
}

Widget Title1Text(text, hexColor) {
  return Text(
    "${text}",
    style: TextStyle(
      fontSize: 28,
      color: HexColor("${hexColor}"),
    ),
  );
}

Widget LargeText(text, hexColor) {
  return Text(
    "${text}",
    style: TextStyle(
      fontSize: 34,
      color: HexColor("${hexColor}"),
    ),
  );
}

Widget FilledButton(fillColor, buttonText) {
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      backgroundColor: HexColor("${fillColor}"),
    ),
    onPressed: () {},
    child: Caption1Text("${buttonText}", "#000000"),
  );
}
