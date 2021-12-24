import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:lugat_run/main.dart';
import 'package:lugat_run/pages/profile.dart';
import 'package:lugat_run/pages/term.dart';
import '../widgets/cards.dart';
import 'package:lugat_run/pages/error.dart';
import 'package:lugat_run/pages/homeside.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import '../widgets/buttons.dart';
import '../widgets/texts.dart';
import 'package:sizer/sizer.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: HexColor('#FFFFFF'),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              LugatAppBarCategory(),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      CategoryCard("Tasarım", "128",
                          "https://www.upload.ee/image/13731805/designCategory.png"),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HeadlineText('Terimler', '#000000'),
                            PopupMenuButton<int>(
                              elevation: 0,
                              color: HexColor('#000000').withOpacity(0.6),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(6)),
                              ),
                              itemBuilder: (context) => [
                                PopupMenuItem<int>(
                                  height: 36,
                                  value: 0,
                                  child: Row(
                                    children: [
                                      Text("En popüler",
                                          style: TextStyle(
                                              color: HexColor('#FFFFFF'))),
                                    ],
                                  ),
                                ),
                                PopupMenuDivider(height: 4),
                                PopupMenuItem<int>(
                                  height: 36,
                                  value: 1,
                                    child: Text("En yeni",
                                        style: TextStyle(
                                            color: HexColor('#FFFFFF')))),
                              ],
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TermPage()),
                          );
                        },
                        child: TermOverviewCard(
                            termImageUrl:
                                "https://www.upload.ee/image/13731924/prototypeTerm.png",
                            termName: 'Prototip',
                            termDescription:
                                'Ürün geliştirme sürecinde, ürünün kı...'),
                      ),
                      Divider(),
                      TermOverviewCard(
                          termImageUrl:
                              "https://www.upload.ee/image/13731924/prototypeTerm.png",
                          termName: 'Prototip',
                          termDescription:
                              'Ürün geliştirme sürecinde, ürünün kı...'),
                      Divider(),
                      TermOverviewCard(
                          termImageUrl:
                              "https://www.upload.ee/image/13731924/prototypeTerm.png",
                          termName: 'Prototip',
                          termDescription:
                              'Ürün geliştirme sürecinde, ürünün kı...'),
                      Divider(),
                      TermOverviewCard(
                          termImageUrl:
                              "https://www.upload.ee/image/13731924/prototypeTerm.png",
                          termName: 'Prototip',
                          termDescription:
                              'Ürün geliştirme sürecinde, ürünün kı...'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBlur({
    required Widget child,
    double sigmaX = 10,
    double sigmaY = 10,
  }) =>
      BackdropFilter(
        filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
        child: child,
      );
}

class LugatAppBarCategory extends StatelessWidget
    implements PreferredSizeWidget {
  LugatAppBarCategory({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: const Padding(
        padding: EdgeInsets.only(left: 12),
        child: Text(
          "Tasarım",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Icon(Icons.search),
        ),
      ],
    );
  }
}
