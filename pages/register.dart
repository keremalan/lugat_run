import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:lugat_run/main.dart';
import '../widgets/buttons.dart';
import '../widgets/texts.dart';
import '../widgets/cards.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

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
              height: 210,
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
                          padding: const EdgeInsets.only(top: 18),
                          child: SubheadText("Bilgilerinizi girin.", "#000000"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, bottom: 12),
                          child: StepProgressIndicator(
                              totalSteps: 3,
                            currentStep: 1,
                            selectedColor: HexColor("#000000"),
                            roundedEdges: Radius.circular(6),
                          ),
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
                    child: Caption1Text("Lütfen bilgilerinizi girin", "#4D4D4D"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: TextField(
                      maxLines: 1,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        labelText: 'İsminiz',
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
                          userName = value;
                        });
                      },
                    ),
                  ),
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
                      child: FilledButton(90.0, "#000000", "#FFFFFF", "Devam"),
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