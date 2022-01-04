import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
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
import 'package:lugat_run/pages/test.dart';
import 'package:lugat_run/utilities/google_sign_in.dart';
import 'widgets/texts.dart';
import 'widgets/cards.dart';
import './pages/register.dart';
import './pages/login.dart';
import './pages/error.dart';
import 'package:sizer/sizer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';

void main() => runApp(ProviderScope(child: Lugat_Run()));

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
        home: const SplashScreen(),
      );
    },);
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isFirebaseInitialized = false;
  @override
  void initState() {
    super.initState();
    initializeFirebase();
  }

  Future<void> initializeFirebase() async {
    await Firebase.initializeApp();
    setState(() {
      isFirebaseInitialized = true;
    });
    if (FirebaseAuth.instance.currentUser != null) {
      goHome();
    }
    // goHome();
  }

  void goHome() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Image.network('https://www.upload.ee/image/13759867/Large_Title.png'),
            ),
            Center(child: isFirebaseInitialized
                ? TextButton(onPressed: () async {
              await signInWithGoogle();
              var uid = FirebaseAuth.instance.currentUser!.uid;
               await FirebaseFirestore.instance.collection('users').doc(uid).set(
                {
                  'isLogged': true,
                  'lastLogInDate': FieldValue.serverTimestamp(),
                },
                SetOptions(merge: true),
              );
              goHome();
            }, child: Container(
              width: 40.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/1200px-Google_%22G%22_Logo.svg.png',
                    height: 16,
                    width: 16,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Google ile giriş yap',
                    style: TextStyle(
                        color: Colors.black
                    )),
                  ),
                ],
              ),
            ))
                : CircularProgressIndicator())
          ],
        ));
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
              padding: const EdgeInsets.only(top: 32, bottom: 2),
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
                    "https://www.upload.ee/image/13757839/metaverse.png",
                    "Metaverse",
                  ),
                  PopularCategoryCard(
                    "https://www.upload.ee/image/13757844/front-end.png",
                    "Front-end",
                  ),
                  PopularCategoryCard(
                    "https://www.upload.ee/image/13757847/back-end.png",
                    "Back-end",
                  ),
                  PopularCategoryCard(
                    "https://www.upload.ee/image/13757855/UI__1_.png",
                    "UI",
                  ),
                  PopularCategoryCard(
                    "https://www.upload.ee/image/13757856/UX.png",
                    "UX",
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
              child: CategoryCard("Fotoğrafçılık", "1",
                  "https://www.upload.ee/image/13763005/diyafram.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22, bottom: 2),
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
                      "https://www.upload.ee/image/13757855/UI__1_.png",
                      "UI",
                      "Gökhan Falan"),
                  CategoryTermCard(
                      "https://www.upload.ee/image/13757856/UX.png",
                      "UX",
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
                        "https://www.upload.ee/image/13757844/front-end.png",
                        "Front-end",
                        "Kerem Alan"),
                    CategoryTermCard(
                        "https://www.upload.ee/image/13757847/back-end.png",
                        "Back-end",
                        "Gökhan Falan"),
                    CategoryTermCard(
                        "https://www.upload.ee/image/13731960/softwareTerm.png",
                        "Git",
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
                                const TestPage()),
                          );
                        },
                        child: Caption1Text("Test Sayfası", "#FFFFFF"),
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
