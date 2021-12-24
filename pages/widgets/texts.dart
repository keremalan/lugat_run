import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

Widget Caption1Text(text, hexColor) {
  return Text(
    "${text}",
    style: TextStyle(
      fontSize: 12,
      color: HexColor("${hexColor}"),
    ),
  );
}

Widget Caption2Text(text, hexColor) {
  return Text(
    "${text}",
    style: TextStyle(
      fontSize: 13,
      color: HexColor("${hexColor}"),
    ),
  );
}

Widget FootnoteText(text, hexColor) {
  return Text(
    "${text}",
    style: TextStyle(
      fontSize: 13,
      color: HexColor("${hexColor}"),
    ),
  );
}

Widget SubheadText(text, hexColor) {
  return Text(
    "${text}",
    style: TextStyle(
      fontSize: 15,
      color: HexColor("${hexColor}"),
    ),
  );
}

Widget CalloutText(text, hexColor) {
  return Text(
    "${text}",
    style: TextStyle(
      fontSize: 16,
      color: HexColor("${hexColor}"),
    ),
  );
}

Widget BodyText(text, hexColor) {
  return Text(
    "${text}",
    style: TextStyle(
      fontSize: 17,
      color: HexColor("${hexColor}"),
    ),
  );
}

Widget HeadlineText(text, hexColor) {
  return Text(
    "${text}",
    style: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: HexColor("${hexColor}"),
    ),
  );
}

Widget Title3Text(text, hexColor) {
  return Text(
    "${text}",
    style: TextStyle(
      fontSize: 20,
      color: HexColor("${hexColor}"),
    ),
  );
}

Widget Title2Text(text, hexColor) {
  return Text(
    "$text",
    style: TextStyle(
      fontSize: 22,
      color: HexColor("$hexColor"),
    ),
  );
}

Widget Title1Text(text, hexColor) {
  return Text(
    "$text",
    style: TextStyle(
      fontSize: 28,
      color: HexColor("${hexColor}"),
    ),
  );
}

Widget LargeText(text, hexColor) {
  return Text(
    "${text}",
    style: TextStyle(
      fontSize: 34,
      color: HexColor("${hexColor}"),
    ),
  );
}