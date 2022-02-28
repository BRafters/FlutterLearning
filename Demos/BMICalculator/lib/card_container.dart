import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class CardContainer extends StatelessWidget {
  final LinearGradient color;
  final Widget cardChild;
  final Function action;

  CardContainer({@required this.color, this.cardChild, this.action});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: action,
        child: Container(
          child: cardChild,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: kColorDark, blurRadius: 30.0, spreadRadius: -23.0, blurStyle: BlurStyle.outer)],
            gradient: this.color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: EdgeInsets.all(15),
        ));
  }
}
