import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:lugat_run/pages/album.dart';
import 'package:lugat_run/pages/bookmark.dart';
import 'package:lugat_run/pages/category.dart';
import 'package:lugat_run/pages/error.dart';
import 'package:lugat_run/pages/explore.dart';
import 'package:lugat_run/pages/homeside.dart';
import 'package:lugat_run/pages/profile.dart';
import 'package:lugat_run/pages/test.dart';
import 'package:sizer/sizer.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
          ),
          itemCount: termList.length,
          itemBuilder: (context, index){
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(termList[index].termImageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Text(termList[index].termTitle,
                    style: TextStyle(color: HexColor('#FFFFFF')),),
                    Text(termList[index].termDescription,
                      style: TextStyle(color: HexColor('#FFFFFF')),),
                    Text(termList[index].termCategory,
                      style: TextStyle(color: HexColor('#FFFFFF')),),
                    Text(termList[index].termMean,
                      style: TextStyle(color: HexColor('#FFFFFF')),),
                    Text(termList[index].termExample,
                      style: TextStyle(color: HexColor('#FFFFFF')),),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
