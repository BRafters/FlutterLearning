import 'package:flutter/material.dart';

// Constants start with a k
const kHeightOfFooter = 80.0;
const kColorLight = Color(0xFFF2FDFF);
const kColorLightGrad =
    LinearGradient(colors: <Color>[kColorLight, kColorLight]);
const kColorDarkGrad = LinearGradient(colors: <Color>[kColorDark, kColorDark]);
const kColorDark = Color(0xFF090D22);
const kGradientLinearDark = LinearGradient(
    colors: <Color>[Color(0xFF212e78), kColorDark],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight);
const kColorDarkerGrad = LinearGradient(colors: [kColorDarker, kColorDarker]);
const kColorDarker = Color(0xFF8E8E99);
const kColorLightValue = 0xFFF2FDFF;
const kColorDarkValue = 0xFF090D22;
const kHeavyFontWeight = FontWeight.w900;
const kRedAccentColor = Color(0xFFEB1555);
const kRedAccentColorValue = 0xFF8E8E99;

// Routes
const kHome = "/";
const kResultsPage = "/results";

// Text Style
TextStyle fontTextStyle({weight: FontWeight, size: double}) {
  return TextStyle(
    color: kColorDark,
    fontSize: size,
    fontWeight: weight,
  );
}
