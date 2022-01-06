import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import '../pages/register.dart';
import 'texts.dart';

Widget FilledButton(buttonWidth, fillColor, captionTextColor, buttonText) {
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
