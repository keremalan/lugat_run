import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'texts.dart';
import 'buttons.dart';

Widget PopularCategoryCard(categoryImgUrl, categoryName) {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: HexColor("#BEBEBE"),
          width: 0.5,
        ),
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
                height: 50,
                width: 50,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 4, left: 4, bottom: 7),
            child: Caption2Text("${categoryName}", "#BEBEBE"),
          ),
        ],
      ),
    ),
  );
}

Widget CategoryCard(categoryName, categoryTermValue, categoryImageUrl) {
  return Padding(
    padding: const EdgeInsets.only(top: 22.0),
    child: Container(
      height: 330,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
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
                    Caption2Text("Tipografi", "#FFFFFF"),
                  ],
                ),
                FilledButton("#FFFFFF", "Kelime ekle"),
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
