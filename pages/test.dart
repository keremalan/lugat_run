import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:lugat_run/model/term.dart';
import 'package:lugat_run/pages/album.dart';
import 'package:lugat_run/pages/bookmark.dart';
import 'package:lugat_run/pages/category.dart';
import 'package:lugat_run/pages/error.dart';
import 'package:lugat_run/pages/explore.dart';
import 'package:lugat_run/pages/homeside.dart';
import 'package:lugat_run/pages/profile.dart';
import 'package:lugat_run/pages/test.dart';
import 'package:lugat_run/repository/category_repository.dart';
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
    return SafeArea(
      child: Material(
        child: Container(
          child: Column(
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
          ),
        ),
      ),
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