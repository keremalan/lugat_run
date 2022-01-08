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
import 'package:cloud_firestore/cloud_firestore.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final Stream<QuerySnapshot> _termsStream = FirebaseFirestore.instance.collection('terms').snapshots();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: StreamBuilder<QuerySnapshot>(
        stream: _termsStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
          if (snapshot.hasError) {
            return Text('Bir şeyler ters gitmiş olmalı.');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text('Şu anda içerik yükleniyor.');
          }

          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
              return ListTile(
                title: Text(data['termTitle']),
                subtitle: Text(data['titleExample']),
              );
            }).toList(),
          );
        },
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