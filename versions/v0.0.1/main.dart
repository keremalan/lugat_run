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
                SearchBar(),
                DescriptionText(),
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

Widget DescriptionText() {
  return Padding(
    padding: EdgeInsets.only(top: 22, bottom: 6),
    child: Text(
      "Öne çıkan kategoriler".toUpperCase(),
      style: TextStyle(
        fontSize: 12,
        height: 1.6,
        color: HexColor('#BFBFBF'),
      ),
    ),
  );
}

Widget SearchBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        width: 380,
        height: 40,
        child: CupertinoSearchTextField(
          placeholder: "Aramak istediğiniz terimi girin",
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
