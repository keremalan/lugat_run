import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:lugat_run/pages/category.dart';
import 'texts.dart';
import 'buttons.dart';
import 'package:http/http.dart';

Widget PopularCategoryCard(categoryImgUrl, categoryName) {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                "${categoryImgUrl}",
                height: 60,
                width: 60,
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: Padding(
              padding: EdgeInsets.only(right: 4, left: 4, bottom: 7),
              child: Center(
                child: Caption2TextPopularCategory(
                    "${categoryName}",
                    "#BEBEBE"
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget CategoryCard(categoryName, categoryTermValue, categoryImageUrl) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Container(
      height: 330,
      decoration: BoxDecoration(
        // border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(6),
        image: DecorationImage(
          image: NetworkImage("${categoryImageUrl}"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Caption2Text("Günün kelimesi", "#FFFFFF"),
                    Caption2Text("Mutlu yıllar", "#FFFFFF"),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, bottom: 16, left: 16),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadlineText("${categoryName}", "#FFFFFF"),
                    Caption1Text(
                        "${categoryTermValue} terim içeriyor", "#FFFFFF"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget TermCard(categoryName, termName, termAuthor, termImageUrl) {
  return Padding(
    padding: const EdgeInsets.only(top: 0),
    child: Container(
      height: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        image: DecorationImage(
          image: NetworkImage("${termImageUrl}"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Container(
                        height: 22,
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
                            Image.network(
                                "https://www.upload.ee/image/13740444/threedot__1_.png"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, bottom: 16, left: 16),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadlineText("${termName}", "#FFFFFF"),
                    Caption2Text(
                        "${termAuthor} tarafından oluşturuldu", "#FFFFFF"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget AddTermCard(categoryName, termName, termAuthor, termImageUrl) {
  return Padding(
    padding: const EdgeInsets.only(top: 0),
    child: Container(
      height: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        image: DecorationImage(
          image: NetworkImage("${termImageUrl}"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 30,
                      width: 100,
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
                          Text("Resim ekle", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, bottom: 16, left: 16),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadlineText("${termName}", "#FFFFFF"),
                    Caption2Text(
                        "${termAuthor} tarafından oluşturuldu", "#FFFFFF"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget CategoryTitle(categoryName) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HeadlineText("${categoryName}", "#000000"),
        SizedBox(
          height: 30,
          child: TextButton(
              onPressed: () {}, child: Caption1Text("Tümünü gör", "#001FC6")),
        ),
      ],
    ),
  );
}

Widget CategoryTermCard(termImageUrl, termName, termAuthorName) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.only(right: 10, bottom: 16),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: Image.network(
                  "${termImageUrl}",
                  height: 124,
                  width: 124,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Caption2Text("${termName}", "#000000"),
                    Caption1Text("${termAuthorName}", "#BEBEBE"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget ExploreCategoryCard(categoryName, categoryImageUrl) {
  return Padding(
    padding: const EdgeInsets.only(top: 22.0),
    child: Container(
      height: 144,
      width: 144,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(6),
        image: DecorationImage(
          image: NetworkImage("${categoryImageUrl}"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8, left: 8),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadlineText("${categoryName}", "#FFFFFF"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget ExploreTermCard(termName, termAuthor, termImageUrl) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 22.0),
        child: Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(6),
            image: DecorationImage(
              image: NetworkImage("${termImageUrl}"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FootnoteText('$termName', '#000000'),
            Caption1Text('$termAuthor', '#808080'),
          ],
        ),
      ),
    ],
  );
}

Widget FilledButton2(buttonWidth, fillColor, captionTextColor, buttonText) {
  return SizedBox(
    width: buttonWidth,
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: HexColor("$fillColor"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () {},
      child: Caption1Text("$buttonText", "$captionTextColor"),
    ),
  );
}