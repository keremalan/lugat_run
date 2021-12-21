import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'texts.dart';

Widget FilledButton(fillColor, buttonText) {
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      backgroundColor: HexColor("${fillColor}"),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
    onPressed: () {},
    child: Caption1Text("${buttonText}", "#000000"),
  );
}
