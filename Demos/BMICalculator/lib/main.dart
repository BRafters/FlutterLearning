import 'package:bmi_calculator/results.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'my_colors.dart';
import 'constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
          '/': (context) => InputPage(),
          '/results': (context) => ResultsPage(),
      },

      /* The dark theme pretty much has everything that we would want in our theme because
  we are kind of going for a dark background and a dark app bar */
      // Here we should just update certain parts if it is already a dark theme
      theme: getLightMode(),
    );
  }
}


ThemeData getDarkMode(){
  return ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(foregroundColor: kColorLight),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch:
      MaterialColor(kColorDarkValue, ColorHandler.getColor(kColorDarkValue)),
    ),
    scaffoldBackgroundColor: Color(kColorDarkValue),
  );
}

ThemeData getLightMode(){
  return ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(foregroundColor: kColorDark),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch:
      MaterialColor(kColorLightValue, ColorHandler.getColor(kColorLightValue)),
    ),
    scaffoldBackgroundColor: Color(kColorLightValue),
  );
}