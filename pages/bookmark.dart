import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:lugat_run/main.dart';
import 'package:lugat_run/pages/profile.dart';
import '../widgets/cards.dart';
import 'package:lugat_run/pages/error.dart';
import 'package:lugat_run/pages/homeside.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import '../widgets/buttons.dart';
import '../widgets/texts.dart';
import 'package:sizer/sizer.dart';

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({Key? key}) : super(key: key);

  @override
  _BookmarkPageState createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: HexColor('#FFFFFF'),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                LugatAppBarBookmark(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            HeadlineText('Kaydettiklerim', '#000000'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: DescriptionText('Son kaydettiklerim'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    TermOverviewCard(termImageUrl: "https://www.upload.ee/image/13731924/prototypeTerm.png", termName: "Prototip", termDescription: "Ürün geliştirme sürecinde ürünün kıs..."),
                    Divider(),
                    TermOverviewCard(termImageUrl: "https://www.upload.ee/image/13731924/prototypeTerm.png", termName: "Prototip", termDescription: "Ürün geliştirme sürecinde ürünün kıs..."),
                    Divider(),
                    TermOverviewCard(termImageUrl: "https://www.upload.ee/image/13731924/prototypeTerm.png", termName: "Prototip", termDescription: "Ürün geliştirme sürecinde ürünün kıs..."),
                    Divider(),
                    TermOverviewCard(termImageUrl: "https://www.upload.ee/image/13731924/prototypeTerm.png", termName: "Prototip", termDescription: "Ürün geliştirme sürecinde ürünün kıs..."),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24, bottom: 8),
                      child: DescriptionText('Tüm kaydettiklerim'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    TermOverviewCard(termImageUrl: 'https://www.upload.ee/image/13741255/circuitTerm.png', termName: 'Circuit', termDescription: 'Kart tasarımı için kullanılan mantıksa...')
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LugatAppBarBookmark extends StatelessWidget
    implements PreferredSizeWidget {
  LugatAppBarBookmark({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: const Padding(
        padding: EdgeInsets.only(left: 12),
        child: Text(
          "Kaydettiklerim",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
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