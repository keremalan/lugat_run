import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:lugat_run/main.dart';
import '../widgets/buttons.dart';
import '../widgets/texts.dart';

String userName = '';
String userEmail = '';
String userPhone = '';
String userPassword = '';
String userPasswordCheck = '';

class ErrorPage extends StatefulWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  _ErrorPageState createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  RegisterAppBar(),
                  Text("er"),
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
