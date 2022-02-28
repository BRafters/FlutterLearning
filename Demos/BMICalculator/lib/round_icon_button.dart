import 'package:flutter/material.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  final Function action;
  final Icon iconChild;
  RoundIconButton({this.action, this.iconChild});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: kColorDark,
      elevation: 3.5,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      onPressed: action,
      child: this.iconChild,
    );
  }
}
