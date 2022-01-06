import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:lugat/main.dart';
import 'package:lugat/pages/profile.dart';
import '../widgets/cards.dart';
import 'package:lugat/pages/error.dart';
import 'package:lugat/pages/homeside.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import '../widgets/buttons.dart';
import '../widgets/texts.dart';
import 'package:sizer/sizer.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: HexColor('#FFFFFF'),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              children: [
                SearchBar('Aramak istediğiniz terimi girin'),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 32.0),
                      child: DescriptionText('Kategoriler'),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ExploreCategoryCard('Tasarım',
                            "https://www.upload.ee/image/13731805/designCategory.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ExploreCategoryCard('Metaverse',
                            "https://www.upload.ee/image/13757839/metaverse.png"),
                      ),
                      ExploreCategoryCard('Front-end',
                          "https://www.upload.ee/image/13757844/front-end.png"),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: DescriptionText('Yeni terimler'),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ExploreTermCard('Variables', 'Duygu Gençdoğan',
                                'https://www.upload.ee/image/13741353/variablesTerm.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ExploreTermCard('Variables', 'Duygu Gençdoğan',
                                'https://www.upload.ee/image/13741353/variablesTerm.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ExploreTermCard('Variables', 'Duygu Gençdoğan',
                                'https://www.upload.ee/image/13741353/variablesTerm.png'),
                          ),
                          ExploreTermCard('Variables', 'Duygu Gençdoğan',
                              'https://www.upload.ee/image/13741353/variablesTerm.png'),
                        ],
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ExploreTermCard('Variables', 'Duygu Gençdoğan',
                                'https://www.upload.ee/image/13741353/variablesTerm.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ExploreTermCard('Variables', 'Duygu Gençdoğan',
                                'https://www.upload.ee/image/13741353/variablesTerm.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ExploreTermCard('Variables', 'Duygu Gençdoğan',
                                'https://www.upload.ee/image/13741353/variablesTerm.png'),
                          ),
                          ExploreTermCard('Variables', 'Duygu Gençdoğan',
                              'https://www.upload.ee/image/13741353/variablesTerm.png'),
                        ],
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ExploreTermCard('Variables', 'Duygu Gençdoğan',
                                'https://www.upload.ee/image/13741353/variablesTerm.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ExploreTermCard('Variables', 'Duygu Gençdoğan',
                                'https://www.upload.ee/image/13741353/variablesTerm.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ExploreTermCard('Variables', 'Duygu Gençdoğan',
                                'https://www.upload.ee/image/13741353/variablesTerm.png'),
                          ),
                          ExploreTermCard('Variables', 'Duygu Gençdoğan',
                              'https://www.upload.ee/image/13741353/variablesTerm.png'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LugatAppBarExplore extends StatelessWidget
    implements PreferredSizeWidget {
  LugatAppBarExplore({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: const Padding(
        padding: EdgeInsets.only(left: 12),
        child: Text(
          "Keşfet",
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
