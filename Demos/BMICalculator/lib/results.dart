import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:bmi_calculator/card_container.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  String returnTextResult(double bmiResult) {
    if (bmiResult >= 25.0) return "overweight";
    if (bmiResult < 18.5) return "underweight";
    return "healthy";
  }
  String formatResult(double result) {
    return result.toStringAsFixed(1).toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Results'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Your Result",
              style: fontTextStyle(weight: FontWeight.bold, size: 40.0)),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    returnTextResult(ModalRoute.of(context).settings.arguments)
                        .toUpperCase(),
                    style: TextStyle(
                        color: Colors.green[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  ),
                  Text(
                    formatResult(ModalRoute.of(context).settings.arguments),
                    style: fontTextStyle(weight: FontWeight.bold, size: 100.0),
                  ),
                  Text(
                    'Your BMI is ' +
                        formatResult(
                            ModalRoute.of(context).settings.arguments) +
                        '. This is considered ' +
                        returnTextResult(
                            ModalRoute.of(context).settings.arguments) +
                        '.',
                    style: TextStyle(color: kColorDark, fontSize: 24),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => {Navigator.pop(context)},
            child: Container(
              decoration: BoxDecoration(color: kRedAccentColor),
              height: kHeightOfFooter,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
