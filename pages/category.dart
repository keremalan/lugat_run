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
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: Container(
                                height: 30,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    width: 1,
                                    color: HexColor('#F2F2F2'),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.network("https://www.upload.ee/thumb/13739155/threedot.png"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => const TermPage()),
                          );
                        },
                          child: TermOverviewCard(termImageUrl: "https://www.upload.ee/image/13731924/prototypeTerm.png", termName: 'Prototip', termDescription: 'Ürün geliştirme sürecinde, ürünün kı...'),
                      ),
                      Divider(),
                      TermOverviewCard(termImageUrl: "https://www.upload.ee/image/13731924/prototypeTerm.png", termName: 'Prototip', termDescription: 'Ürün geliştirme sürecinde, ürünün kı...'),
                      Divider(),
                      TermOverviewCard(termImageUrl: "https://www.upload.ee/image/13731924/prototypeTerm.png", termName: 'Prototip', termDescription: 'Ürün geliştirme sürecinde, ürünün kı...'),
                      Divider(),
                      TermOverviewCard(termImageUrl: "https://www.upload.ee/image/13731924/prototypeTerm.png", termName: 'Prototip', termDescription: 'Ürün geliştirme sürecinde, ürünün kı...'),
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