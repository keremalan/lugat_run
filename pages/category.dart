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
}

class AddTermPage extends StatefulWidget {
  const AddTermPage({Key? key}) : super(key: key);

  @override
  _AddTermPageState createState() => _AddTermPageState();
}

class _AddTermPageState extends State<AddTermPage> {
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
              LugatAppBarAddTerm(),
              Container(
                child: Column(
                  children: [
                    AddTermCard('Tasarım', 'Terim adı', 'Kerem Alan', 'https://www.upload.ee/image/13741477/Rectangle_39.png'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22, right: 16, left: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 22),
                      child: Row(
                        children: [
                          Title2Text('Terim adı', '#000000'),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 4),
                                    child: BodyText('Akla gelen ilk anlamı', '#000000'),
                                  ),
                                  BodyText('Bilgi eklemek için dokunun', '#999999'),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 22, bottom: 4),
                                    child: BodyText('Örnek', '#000000'),
                                  ),
                                  BodyText('Bilgi eklemek için dokunun', '#999999'),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 22, bottom: 4),
                                    child: BodyText('Ek açıklamalar', '#000000'),
                                  ),
                                  BodyText('Bilgi eklemek için dokunun', '#999999'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 37),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: HexColor("#007AFF"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const AddTermSuccessPage()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: BodyText("Tamamla", "#FFFFFF"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddTermSuccessPage extends StatefulWidget {
  const AddTermSuccessPage({Key? key}) : super(key: key);

  @override
  _AddTermSuccessPageState createState() => _AddTermSuccessPageState();
}

class _AddTermSuccessPageState extends State<AddTermSuccessPage> {
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
              LugatAppBarAddTerm(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 36, bottom: 4),
                      child: Title2Text('Teriminiz başarıyla oluşturuldu.', '#000000'),
                    ),
                    Caption2Text("Aşağıdaki butona tıklayarak kategoriye dönebilirsiniz.", '#909090'),
                    Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: Center(
                        child: SizedBox(
                          width: 200,
                          height: 40,
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
                                    const CategoryPage()),
                              );
                            },
                            child: BodyText("Tasarım Kategorisi", "#FFFFFF"),
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
      ),
    );
  }
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
          child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const AddTermPage()),
                );
              },
              child: Icon(Icons.add)),
        ),
      ],
    );
  }
}

class LugatAppBarAddTerm extends StatelessWidget
    implements PreferredSizeWidget {
  LugatAppBarAddTerm({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: const Padding(
        padding: EdgeInsets.only(left: 12),
        child: Text(
          "Terim ekle",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
