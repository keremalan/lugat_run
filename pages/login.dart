import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:lugat_run/main.dart';
import 'package:lugat_run/pages/register.dart';
import '../widgets/buttons.dart';
import '../widgets/texts.dart';

String userName = '';
String userEmail = '';
String userPhone = '';
String userPassword = '';
String userPasswordCheck = '';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: HexColor("#E5E5E5"),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RegisterAppBar(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 34),
                    child: RegisterHead(titleText: 'Giriş Yap', subheadText: 'Bilgilerinizle hesabınıza giriş yapın'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22, right: 34, bottom: 32, left: 34),
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            labelText: 'E-Postanız',
                            contentPadding: EdgeInsets.only(bottom: 8),
                            labelStyle: TextStyle(
                              color: HexColor("#999999"),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: HexColor("#D9D9D9"),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: HexColor("#000000"),
                              ),
                            ),
                          ),
                          onChanged: (value) {
                            print(value);
                            setState(() {
                              userEmail = value;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            labelText: 'Şifreniz',
                            contentPadding: EdgeInsets.only(bottom: 8),
                            labelStyle: TextStyle(
                              color: HexColor("#999999"),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: HexColor("#D9D9D9"),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: HexColor("#000000"),
                              ),
                            ),
                          ),
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          onChanged: (value) {
                            print(value);
                            setState(() {
                              userPassword = value;
                            });
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: SizedBox(
                              width: 80,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: HexColor("#FFFFFF"),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterPage()),
                                  );
                                },
                                child: Caption1Text("Kayıt ol", "#000000"),
                              ),
                            ),
                          ),
                          FilledButton(160.0, '#000000', '#FFFFFF', 'Giriş yap'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(onTap: () {}, child: Caption2Text('Şifremi unuttum', '#999999')),
                InkWell(onTap: () {}, child: Caption2Text('Yardıma ihtiyacım var', '#999999')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(600);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: HexColor("#E5E5E5"),
      elevation: 0,
      centerTitle: false,
      title: const Padding(
        padding: EdgeInsets.only(left: 0),
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
