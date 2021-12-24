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

class TermPage extends StatefulWidget {
  const TermPage({Key? key}) : super(key: key);

  @override
  _TermPageState createState() => _TermPageState();
}

class _TermPageState extends State<TermPage> {
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
              LugatAppBarTerm(),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Column(
                    children: [
                      TermCard('Tasarım', 'Prototip', 'Kerem Alan', 'https://www.upload.ee/image/13740439/prototypeTerm__5_.png'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 22, bottom: 22),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  HeadlineText('Prototip', '#000000'),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 10),
                                        child: Caption2Text('Önerileri incele', '#001FC6'),
                                      ),
                                      Caption2Text('Katkı yap', '#001FC6'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 4),
                                    child: BodyText('Akla gelen ilk anlamı', '#000000'),
                                  ),
                                  BodyText('Bilgisayar ile diğer cihazların bağlantısını kurmaya yarayan veriyolu.', '#999999'),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 22, bottom: 4),
                                    child: BodyText('Örnek', '#000000'),
                                  ),
                                  BodyText("iPhone 6 cihazınızı bilgisayara bağlamak için bilgisayarınızın USB girişini ve iPhone’unuzun lightining girişini kullanırsınız.", '#999999'),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 22, bottom: 4),
                                    child: BodyText('Ek açıklamalar', '#000000'),
                                  ),
                                  BodyText("USB, ülkemizde aynı zamanda flash bellek anlamında da kullanılabilmektedir. Flash bellek ise bilgisayarınızdaki bir dosyayı farklı bir cihaza aktarmak için kullandığınız nispeten küçük depolama alanlarına sahip taşınabilir cihazlardır.", '#999999'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      BodyText('Katkı sağlayanlar', '#000000'),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, bottom: 20),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(30),
                                                  child: Image.network("https://www.upload.ee/image/13740474/profile.png", height: 20, width: 20),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 10),
                                                child: Caption2Text('Can Araştıranoğlu', '#BFBFBF'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
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

class LugatAppBarTerm extends StatelessWidget
    implements PreferredSizeWidget {
  LugatAppBarTerm({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: const Padding(
        padding: EdgeInsets.only(left: 12),
        child: Text(
          "Prototip",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}