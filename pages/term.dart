import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:lugat/main.dart';
import 'package:lugat/pages/category.dart';
import 'package:lugat/pages/profile.dart';
import '../widgets/cards.dart';
import 'package:lugat/pages/error.dart';
import 'package:lugat/pages/homeside.dart';
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
  bool isEditable = true;
  String editButtonText = "Katkı sağla";
  String editingButtonText = "Tamamla";
  bool isVisible = true;
  final _controller = TextEditingController();
  String termTitle = "Diyafram";
  final _formKey = GlobalKey<FormState>();

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
                      TermCard('Fotoğrafçılık', '$termTitle', 'Ecrenur Mut',
                          'https://www.upload.ee/image/13763015/diyafram__1_.png'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 22, bottom: 22),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  HeadlineText('$termTitle', '#000000'),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Caption2Text(
                                            'Önerileri incele', '#001FC6'),
                                      ),
                                      Visibility(
                                        visible: isEditable,
                                        child: SizedBox(
                                          height: 20,
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding: EdgeInsets.zero,
                                              minimumSize: Size(50, 30),
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                isEditable = !isEditable;
                                              });
                                            },
                                            child: isEditable
                                                ? Caption2Text(
                                                    '$editButtonText',
                                                    '#001FC6')
                                                : Caption2Text(
                                                    '$editingButtonText',
                                                    '#001FC6'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Form(
                              key: _formKey,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 4),
                                      child: BodyText(
                                          'Akla gelen ilk anlamı', '#000000'),
                                    ),
                                    Visibility(
                                        visible: isEditable,
                                        child:
                                            BodyText('$termTitle', '#999999')),
                                    Visibility(
                                      visible: isEditable == false,
                                      child: Column(
                                        children: [
                                          TextFormField(
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Terim adı boş bırakılamaz!';
                                              }
                                              return null;
                                            },
                                            maxLength: 16,
                                            controller: _controller,
                                            decoration: InputDecoration(
                                              hintText: '$termTitle',
                                              suffixIcon: TextButton(
                                                  onPressed: () {
                                                    _formKey.currentState!
                                                        .validate();
                                                  },
                                                  child: Icon(Icons.check)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 22, bottom: 4),
                                      child: BodyText('Örnek', '#000000'),
                                    ),
                                    BodyText(
                                        "Analog cihazlarda diyafram butonunun çevrilmesi ile düzenlenir. Dijital cihazlarda otomatik düzenlenebilir.",
                                        '#999999'),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 22, bottom: 4),
                                      child:
                                          BodyText('Ek açıklamalar', '#000000'),
                                    ),
                                    BodyText(
                                        "Karanlık film ve dizi sahnelerinde de diyaframı kapalı, benzeri bir kullanım görülebilir.",
                                        '#999999'),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 22, bottom: 22),
                                      child: Visibility(
                                        visible: isEditable == false,
                                        child: Center(
                                          child: TextButton(
                                              style: ButtonStyle(
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                )),
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        HexColor('#007AFF')),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  isEditable = !isEditable;
                                                  termTitle = _controller.text;
                                                });
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 6,
                                                    right: 8,
                                                    bottom: 6,
                                                    left: 8),
                                                child: Text('Tamamla',
                                                    style: TextStyle(
                                                        color: HexColor(
                                                            '#FFFFFF'))),
                                              )),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 24.0, horizontal: 0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      BodyText('Katkı sağlayanlar', '#000000'),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 20),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                child: Image.network(
                                                    "https://www.upload.ee/image/13740474/profile.png",
                                                    height: 20,
                                                    width: 20),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10),
                                                child: Caption2Text(
                                                    'Can Araştıranoğlu',
                                                    '#BFBFBF'),
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

class LugatAppBarTerm extends StatelessWidget implements PreferredSizeWidget {
  LugatAppBarTerm({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
    );
  }
}
