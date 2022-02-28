import 'dart:ui';
import 'package:flutter/cupertino.dart';

import 'constants.dart';

enum GenderName { MALE, FEMALE }

class Gender {
  bool _isSelected = false; // By default, both gender buttons are unselected
  GenderName _gender;

  Gender(GenderName gender) {
    this._gender = gender;
  }

  List<LinearGradient> setSelectedGender(bool isSelected){
    this._isSelected = isSelected;
    return this._isSelected ? [kGradientLinearDark, kColorLightGrad] : [kColorLightGrad, kGradientLinearDark];
  }

  List<LinearGradient> getCardColor(){
    return this._isSelected ? [kGradientLinearDark, kColorLightGrad] : [kColorLightGrad, kGradientLinearDark];
  }

  bool isSelectedGender(){
    return this._isSelected;
  }
}

// If a gender ie (female) is selected, we set the other gender that was selected to false
