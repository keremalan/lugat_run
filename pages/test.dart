import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../widgets/cards.dart';
import '../widgets/texts.dart';
import 'package:lugat/model/term.dart';
import 'package:lugat/pages/album.dart';
import 'package:lugat/pages/bookmark.dart';
import 'package:lugat/pages/category.dart';
import 'package:lugat/pages/error.dart';
import 'package:lugat/pages/explore.dart';
import 'package:lugat/pages/homeside.dart';
import 'package:lugat/pages/profile.dart';
import 'package:lugat/pages/test.dart';
import 'package:lugat/repository/category_repository.dart';
import 'package:sizer/sizer.dart';
import '../repository/term_repository.dart';
class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  TermRepository termRepository = TermRepository();
  CategoryRepository categoryRepository = CategoryRepository();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            LugatAppBarTerm(),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Column(
                  children: [
                    TermCard('${termRepository.terms.first.categoryName}', '${termRepository.terms.first.termName}', '${termRepository.terms.first.termAuthor}', '${termRepository.terms.first.termImageUrl}'),
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
                                HeadlineText('${termRepository.terms[0].termName}', '#000000'),
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
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 4),
                                    child: BodyText('Akla gelen ilk anlamı', '#000000'),
                                  ),
                                  BodyText('${termRepository.terms.first.termMean}', '#999999'),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 22, bottom: 4),
                                    child: BodyText('Örnek', '#000000'),
                                  ),
                                  BodyText("${termRepository.terms.first.termExample}", '#999999'),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 22, bottom: 4),
                                    child: BodyText('Ek açıklamalar', '#000000'),
                                  ),
                                  BodyText("${termRepository.terms.first.termDescription}", '#999999'),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 0),
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
                                              child: Image.network("${termRepository.terms.first.contributorAvatar}", height: 20, width: 20),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: Caption2Text('${termRepository.terms[0].contributorName}', '#BFBFBF'),
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
    );
  }
}

class TestTerm extends StatelessWidget {
  const TestTerm({
    Key? key,
    required this.termRepository,
  }) : super(key: key);

  final TermRepository termRepository;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LugatAppBar(),
        Container(
          height: 330,
          width: 100.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            image: DecorationImage(
              image: NetworkImage("${termRepository.terms.first.termImageUrl}"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('${termRepository.terms.first.termName}',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),),
                Text('${termRepository.terms.first.termAuthor} tarafından oluşturuldu.',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                Text('${termRepository.terms.first.termName}',
                style: TextStyle(
                  fontSize: 18,
                ),),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Akla gelen ilk anlamı'),
              Row(children: [
                Text('${termRepository.terms.first.termMean}'),
                ],
              ),
              Text('Örnek'),
              Row(children: [
                Text('${termRepository.terms.first.termExample}'),
              ],
              ),
              Text('Ek açıklamalar'),
              Row(children: [
                Text('${termRepository.terms.first.termDescription}'),
              ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class LugatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LugatAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: const Padding(
        padding: EdgeInsets.only(left: 10),
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
          "",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}