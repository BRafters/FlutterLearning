import 'package:flutter/material.dart';

const ICON_SIZE = 80.0;

class IconTextColumnCreator extends StatelessWidget{
  IconData fieldIconData;
  String fieldText;
  LinearGradient fieldColor;

  IconTextColumnCreator({@required this.fieldIconData, @required this.fieldText, @required this.fieldColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(fieldIconData, color: fieldColor.colors[1], size: 80.0),
        SizedBox(height: 10),
        Text(fieldText, style: TextStyle(
            fontSize: 20.0,
            color: fieldColor.colors[1]
        )),
      ],
    );
  }
}