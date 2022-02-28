import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:bmi_calculator/gender.dart';
import 'package:bmi_calculator/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'card_container.dart';
import 'icon_text_column.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender male = Gender(GenderName.MALE);
  Gender female = Gender(GenderName.FEMALE);
  int userHeight = 180;
  int userWeight = 140;
  int userAge = 20;

  // 0: background, 1: text
  List<LinearGradient> colorMale;
  List<LinearGradient> colorFemale;

  _InputPageState() {
    colorMale = male.getCardColor();
    colorFemale = female.getCardColor();
  }
  updateColor(GenderName mOrF) {
    switch (mOrF) {
      case GenderName.MALE:
        if (!male.isSelectedGender()) {
          colorMale = male.setSelectedGender(true);
          colorFemale = female.setSelectedGender(false);
          return;
        }

        colorMale = male.setSelectedGender(false);
        break;

      case GenderName.FEMALE:
        if (!female.isSelectedGender()) {
          colorFemale = female.setSelectedGender(true);
          colorMale = male.setSelectedGender(false);
          return;
        }

        colorFemale = female.setSelectedGender(false);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardContainer(
                    action: () {
                      setState(() {
                        updateColor(GenderName.MALE);
                      });
                    },
                    color: colorMale[0],
                    cardChild: IconTextColumnCreator(
                      fieldIconData: Icons.male,
                      fieldText: "MALE",
                      fieldColor: colorMale[1],
                    ),
                  ),
                ),
                Expanded(
                  child: CardContainer(
                    action: () {
                      setState(() {
                        updateColor(GenderName.FEMALE);
                      });
                    },
                    color: colorFemale[0],
                    cardChild: IconTextColumnCreator(
                      fieldIconData: Icons.female,
                      fieldText: "FEMALE",
                      fieldColor: colorFemale[1],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: CardContainer(
                  color: kColorLightGrad,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: fontTextStyle(
                            weight: FontWeight.normal, size: 20.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            userHeight.toString(),
                            style: fontTextStyle(
                                weight: kHeavyFontWeight, size: 50.0),
                          ),
                          Text(
                            'cm',
                            style: fontTextStyle(
                                weight: FontWeight.w300, size: 18.0),
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          overlayColor: Color(0x50EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 12.0),
                          thumbColor: kRedAccentColor,
                          activeTrackColor: kColorDark,
                          inactiveTrackColor: kColorDarker,
                        ),
                        child: Slider(
                            value: userHeight.toDouble(),
                            min: 120,
                            max: 260,
                            onChanged: (double newValue) {
                              setState(() {
                                userHeight = newValue.round();
                              });
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardContainer(
                    color: kColorLightGrad,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("WEIGHT",
                            style: fontTextStyle(
                                weight: FontWeight.normal, size: 18.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(this.userWeight.toString(),
                                style: fontTextStyle(
                                    weight: FontWeight.bold, size: 50.0)),
                            Text('lbs',
                                style: fontTextStyle(
                                    weight: FontWeight.w300, size: 18.0))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              action: () {
                                setState(() {
                                  this.userWeight--;
                                });
                              },
                              iconChild: Icon(
                                Icons.remove,
                                color: kColorLight,
                                size: 35.0,
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            RoundIconButton(
                              iconChild: Icon(
                                Icons.add,
                                color: kColorLight,
                                size: 35.0,
                              ),
                              action: () {
                                setState(() {
                                  this.userWeight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CardContainer(
                      color: kColorLightGrad,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('AGE',
                              style: fontTextStyle(
                                  weight: FontWeight.normal, size: 18.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(this.userAge.toString(),
                                  style: fontTextStyle(
                                      weight: FontWeight.bold, size: 50.0)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                action: () {
                                  setState(() {
                                    this.userAge--;
                                  });
                                },
                                iconChild: Icon(
                                  Icons.remove,
                                  color: kColorLight,
                                  size: 35.0,
                                ),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              RoundIconButton(
                                iconChild: Icon(
                                  Icons.add,
                                  color: kColorLight,
                                  size: 35.0,
                                ),
                                action: () {
                                  setState(() {
                                    this.userAge++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              String gender;
              if (male.isSelectedGender())
                gender = "Male";
              else if (female.isSelectedGender()) gender = "Female";
              print(this.userWeight);
              BMICalculator bmi = BMICalculator(
                  height: this.userHeight,
                  weightInlbs: this.userWeight,
                  age: this.userAge,
                  gender: gender);
              Navigator.pushNamed(context, kResultsPage,
                  arguments: bmi.calculate());
            },
            child: Container(
              color: kRedAccentColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kHeightOfFooter,
              child: Center(
                child: Text("CALCULATE BMI",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
