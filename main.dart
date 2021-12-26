import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:lugat_run/pages/album.dart';
import 'package:lugat_run/pages/bookmark.dart';
import 'package:lugat_run/pages/category.dart';
import 'package:lugat_run/pages/error.dart';
import 'package:lugat_run/pages/explore.dart';
import 'package:lugat_run/pages/homeside.dart';
import 'package:lugat_run/pages/profile.dart';
import 'widgets/texts.dart';
import 'widgets/cards.dart';
import './pages/register.dart';
import './pages/login.dart';
import './pages/error.dart';
import 'package:sizer/sizer.dart';

void main() => runApp(const Lugat_Run());

// Home Page

// ignore: camel_case_types
class Lugat_Run extends StatefulWidget {
  const Lugat_Run({Key? key}) : super(key: key);

  @override
  _Lugat_RunState createState() => _Lugat_RunState();
}

// ignore: camel_case_types
class _Lugat_RunState extends State<Lugat_Run> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/register': (context) => const RegisterPage(),
          '/login': (context) => const LoginPage(),
          '/error': (context) => const ErrorPage(),
        },
        theme: MyAppThemes.appThemeLight(),
        home: const Home(),
      );
    },);
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(
    ),
    ExplorePage(
    ),
    BookmarkPage(
    ),
    ProfilePage(
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LugatAppBar(),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ana sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Keşfet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Kaydettiklerim',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: HexColor('#307BF6'),
        unselectedItemColor: HexColor('#B3B3B3'),
        onTap: _onItemTapped,
      ),
    );
  }
}



class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar('Aramak istediğiniz terimi girin'),
            Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 8),
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
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const CategoryPage()),
                );
              },
              child: CategoryCard("Tasarım", "128",
                  "https://www.upload.ee/image/13731805/designCategory.png"),
            ),
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Title3Text('Test Merkezi', '#000000'),
                  Row(
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: HexColor("#000000"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const LoginPage()),
                          );
                        },
                        child: Caption1Text("Giriş Yap Sayfası", "#FFFFFF"),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: HexColor("#000000"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const ErrorPage()),
                          );
                        },
                        child: Caption1Text("Hata Sayfası", "#FFFFFF"),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: HexColor("#000000"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const ProfilePage()),
                          );
                        },
                        child: Caption1Text("Profil Sayfası", "#FFFFFF"),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: HexColor("#000000"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const RegisterPage()),
                          );
                        },
                        child: Caption1Text("Kayıt Sayfası", "#FFFFFF"),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: HexColor("#000000"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const BookmarkPage()),
                          );
                        },
                        child: Caption1Text("Bookmark Sayfası", "#FFFFFF"),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: HexColor("#000000"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const ExplorePage()),
                          );
                        },
                        child: Caption1Text("Keşfet Sayfası", "#FFFFFF"),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: HexColor("#000000"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const AlbumPage()),
                          );
                        },
                        child: Caption1Text("Galeri Sayfası", "#FFFFFF"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// App Bar

class LugatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LugatAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          "Lügat",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const HomeSide()),
              );
            },
            child: const Icon(Icons.menu),
          ),
        ),
      ],
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

Widget SearchBar(placeHold) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 91.2.w,
        height: 40,
        child: CupertinoSearchTextField(
          placeholder: "$placeHold",
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
      dividerTheme: DividerThemeData(
        color: Colors.white,
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
