import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:lugat_run/main.dart';
import '../widgets/buttons.dart';
import '../widgets/texts.dart';
import '../widgets/cards.dart';

String userName = '';
String userEmail = '';
String userPassword = '';
String userPasswordCheck = '';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  void didUpdateWidget(RegisterPage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

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
                    padding: EdgeInsets.symmetric(horizontal: 34),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Title1Text("Hesap oluştur", "#000000"),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14),
                          child: SubheadText("Bilgilerinizi girin.", "#000000"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22, right: 34, bottom: 22, left: 34),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadlineText("Kişisel Bilgileriniz", "#000000"),
                  Padding(
                    padding: const EdgeInsets.only(top: 6, bottom: 27),
                    child: Caption1Text("Lütfen bilgilerinizi girin", "#BEBEBE"),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'İsim'),
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        userName = value;
                      });
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'E-Posta'),
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        userEmail = value;
                      });
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Şifre'),
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
                  TextField(
                    decoration: InputDecoration(labelText: 'Şifre onay'),
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        userPasswordCheck = value;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Caption1Text("İsminiz", "#BEBEBE"),
                  ),
                  Text(userName),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Caption1Text("E-Posta adresiniz", "#BEBEBE"),
                  ),
                  Text(userEmail),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Caption1Text("Şifreniz", "#BEBEBE"),
                  ),
                  Text(userPassword),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Caption1Text("Şifre onay", "#BEBEBE"),
                  ),
                  Text(userPasswordCheck),
                ],
              ),
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
