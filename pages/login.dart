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
                InkWell(onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ForgotPassword()),
                  );
                }, child: Caption2Text('Şifremi unuttum', '#999999')),
                InkWell(onTap: () {}, child: Caption2Text('Yardıma ihtiyacım var', '#999999')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  // for visuality
  String userPhone = "5347437751";
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 210,
              decoration: BoxDecoration(
                color: HexColor("#E5E5E5"),
              ),
              child: Column(
                children: [
                  RegisterAppBar(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 34),
                    child: RegisterHead(
                        titleText: 'Şifre yenile',
                        subheadText: 'Şifrenizi yenilemek için onay mesajı alın'
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 22, right: 34, bottom: 22, left: 34),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const RegisterBodyHead(
                    headlineText: 'Bir gönderim yolu seçin',
                    captionText: 'Kodunuz seçtiğiniz yol üzerinden size gönderilecektir.',
                  ),
                  Caption2Text("E-Postanız", "#9D9D9D"),
                  Container(
                    width: 358,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: HexColor("#D9D9D9"),
                          width: 1,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            userEmail,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          FilledButton(80.0, "#FFFFFF", "#000000", "Gönder"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Caption2Text("Telefon numaranız", "#9D9D9D"),
                  ),
                  Container(
                    width: 358,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: HexColor("#D9D9D9"),
                          width: 1,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            userPhone,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          FilledButton(80.0, "#FFFFFF", "#000000", "Gönder"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Center(
                      child: SizedBox(
                        width: 120,
                        child: OutlinedButton(
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
                                  const ForgotPasswordStep2()),
                            );
                          },
                          child: Caption1Text("Devam", "#FFFFFF"),
                        ),
                      ),
                    ),
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

class ForgotPasswordStep2 extends StatefulWidget {
  const ForgotPasswordStep2({Key? key}) : super(key: key);

  @override
  _ForgotPasswordStep2State createState() => _ForgotPasswordStep2State();
}

class _ForgotPasswordStep2State extends State<ForgotPasswordStep2> {
  // for visuality
  String userPhone = "5347437751";
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 210,
              decoration: BoxDecoration(
                color: HexColor("#E5E5E5"),
              ),
              child: Column(
                children: [
                  RegisterAppBar(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 34),
                    child: RegisterHead(
                        titleText: 'Şifre yenile',
                        subheadText: 'Onay kodunuzu girin ve şifrenizi tanımlayın.'
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 22, right: 34, bottom: 22, left: 34),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const RegisterBodyHead(
                    headlineText: 'Onay kodunu girin',
                    captionText: 'Onay kodunuzla birlikte şifrenizi yeniden tanımlayın.',
                  ),
                  Caption2Text("Onay kodu", "#9D9D9D"),
                  Container(
                    width: 358,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: HexColor("#D9D9D9"),
                          width: 1,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            userEmail,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          FilledButton(130.0, "#FFFFFF", "#000000", "Yeniden gönder"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16, top: 12),
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        labelText: 'Şifrenizi onaylayın',
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
                          userPasswordCheck = value;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Center(
                      child: SizedBox(
                        width: 120,
                        child: OutlinedButton(
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
                                  const ForgotPasswordStep3()),
                            );
                          },
                          child: Caption1Text("Tamamla", "#FFFFFF"),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Caption2Text('Yardıma ihtiyacım var', '#9D9D9D'),
                    ),
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

class ForgotPasswordStep3 extends StatefulWidget {
  const ForgotPasswordStep3({Key? key}) : super(key: key);

  @override
  _ForgotPasswordStep3State createState() => _ForgotPasswordStep3State();
}

class _ForgotPasswordStep3State extends State<ForgotPasswordStep3> {
  // for visuality
  String userPhone = "5347437751";
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 210,
              decoration: BoxDecoration(
                color: HexColor("#E5E5E5"),
              ),
              child: Column(
                children: [
                  RegisterAppBar(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 34),
                    child: RegisterHead(
                        titleText: 'Şifre yenile',
                        subheadText: 'Şifreniz yeniden belirlendi!'
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 22, right: 34, bottom: 22, left: 34),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const RegisterBodyHead(
                    headlineText: 'Giriş ekranına dönebilirsiniz',
                    captionText: 'Aşağıdaki buton sizi giriş sayfasına yönlendirecektir.',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Center(
                      child: SizedBox(
                        width: 120,
                        child: OutlinedButton(
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
                          child: Caption1Text("Giriş Yap", "#FFFFFF"),
                        ),
                      ),
                    ),
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


class RegisterBodyHead extends StatelessWidget {
  const RegisterBodyHead({
    Key? key,
    required this.headlineText,
    required this.captionText,
  }) : super(key: key);

  final String headlineText;
  final String captionText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadlineText("$headlineText", "#000000"),
        Padding(
          padding: const EdgeInsets.only(top: 6, bottom: 27),
          child: Caption1Text("$captionText", "#4D4D4D"),
        ),
      ],
    );
  }
}

class RegisterHead extends StatelessWidget {
  const RegisterHead({
    Key? key,
    required this.titleText,
    required this.subheadText,
  }) : super(key: key);

  final String titleText;
  final String subheadText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Title1Text("$titleText", "#000000"),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18),
          child: SubheadText("$subheadText", "#000000"),
        ),
      ],
    );
  }
}