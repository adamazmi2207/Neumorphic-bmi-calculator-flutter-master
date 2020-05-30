import 'package:bmi_calculator/bf_calculator_brain.dart';
import 'package:bmi_calculator/bmi_2/neu_widgets_2/bottom_button.dart';
import 'package:bmi_calculator/bmi_2/neu_widgets_2/top_bar.dart';
import 'package:bmi_calculator/bmi_2/screens/result_page_2.dart';
import 'package:bmi_calculator/bmi_calculator_brain.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage2 extends StatefulWidget {
  @override
  _InputPage2State createState() => _InputPage2State();
}

enum Gender { MALE, FEMALE, NON_BINARY }
bool maleIndicator = false;
bool femaleIndicator = false;
// Color indicatorOffColor = Colors.black54;
// Color indicatorOnColor = Colors.black54.withOpacity(0.0);

class _InputPage2State extends State<InputPage2> {
  Gender gender;
  double height = 160;
  int weight = 60;
  int age = 20;
  int sex;
  // Color indicatorColor;
  // final ValueChanged<Gender> onChanged;

  // _InputPage2State(this.gender, this.onChanged);
  // int genderStringtoInt() {
  //   if (gender.toString() == "MALE") {
  //     return sex = 1;
  //   }
  //   return sex = 0;
  // }

  @override
  Widget build(BuildContext context) {
    // final theme = NeumorphicTheme.currentTheme(context);
    // final theme2 = NeumorphicTheme.of(context);
    final inputPageTheme = NeumorphicTheme.of(context).usedTheme;
    return Scaffold(
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TopBar(title: "BMI Calculator"),
            SizedBox(height: 20.0),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: _GenderCard(
                      title: "MALE",
                      icon: FontAwesomeIcons.mars,
                      genderenum: Gender.MALE,
                      gender: gender,
                      onChanged: (gender) {
                        setState(
                          () {
                            this.gender = gender;
                            if (gender.toString() == "MALE") {
                              return sex = 1;
                            }
                            return sex = 0;
                            //print(inputPageTheme);
                            // this.gender == gender
                            //     ? indicatorOnColor
                            //     : indicatorOffColor;
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: _GenderCard(
                      title: "FEMALE",
                      icon: FontAwesomeIcons.venus,
                      genderenum: Gender.FEMALE,
                      gender: gender,
                      onChanged: (gender) {
                        setState(
                          () {
                            this.gender = gender;
                            //  print(theme);
                            //  print(theme2.toString());
                            // this.gender == gender
                            //     ? Colors.black54
                            //     : Colors.black54.withOpacity(0.0);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: _HeightCard(
                height: this.height,
                onChanged: (height) {
                  setState(() {
                    this.height = height;
                  });
                },
              ),
            ),
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                  child: _NumberWithButtonCard(
                    title: "WEIGHT",
                    value: weight.toString(),
                    onClickMinus: () {
                      setState(
                        () {
                          weight--;
                        },
                      );
                    },
                    onClickPlus: () {
                      setState(
                        () {
                          weight++;
                        },
                      );
                    },
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: _NumberWithButtonCard(
                    title: "AGE",
                    value: age.toString(),
                    onClickMinus: () {
                      setState(
                        () {
                          age--;
                        },
                      );
                    },
                    onClickPlus: () {
                      setState(
                        () {
                          age++;
                        },
                      );
                    },
                  ),
                ),
              ]),
            ),
            SizedBox(height: 10.0),
            BottomButton(
              title: "CALCULATE",
              onClick: () {
                BMICalculatorBrain calcBMI = BMICalculatorBrain(
                    height: height.toInt(),
                    weight: weight,
                    gender: gender.toString(),
                    age: age,
                    sex: sex);

                //BfCalculatorBrain calcBF = BfCalculatorBrain(age: age, bmi: bmi,);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage2(
                      bmiResult: calcBMI.calculateBMI(),
                      bmiResultPercent: calcBMI.calculateBMIPercentage(),
                      bmiResultText: calcBMI.getResult(),
                      bmiInterpretation: calcBMI.getInterpretation(),
                      bfResult: calcBMI.calculateBodyFat(),
                      inputPageTheme: inputPageTheme,
                    ),
                  ),
                );
              },
              //     MaterialPageRoute(
              //       builder: (context) {
              //         return ResultPage2( );
              //       },
              //     ),
            ),
          ],
        ),
      ),
    );
  }
}

class _GenderCard extends StatelessWidget {
  final Gender genderenum;
  final Gender gender;
  final ValueChanged<Gender> onChanged;
  final String title;
  final IconData icon;

  const _GenderCard(
      {@required this.gender,
      @required this.onChanged,
      @required this.title,
      @required this.icon,
      this.genderenum});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: NeumorphicRadio(
        groupValue: this.gender,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20.0)),
        padding: const EdgeInsets.all(12.0),
        style: NeumorphicRadioStyle(shape: NeumorphicShape.convex),
        value: genderenum,
        child: Stack(
          children: <Widget>[
            Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                intensity: 0.5,
                color: indicatorColor(context),
              ),
              boxShape: NeumorphicBoxShape.circle(),
              child: Container(
                height: 18,
                width: 18,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    icon,
                    color: iconsColor(context),
                    size: 80.0,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    title,
                    style: TextStyle(
                      color: textColor(context),
                      fontSize: 18.0,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        onChanged: (value) => this.onChanged(value),
      ),
    );
  }
}

class _HeightCard extends StatelessWidget {
  final double height;
  final ValueChanged<double> onChanged;

  _HeightCard({@required this.height, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Neumorphic(
        style: NeumorphicStyle(shape: NeumorphicShape.concave),
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20.0)),
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "HEIGHT",
              style: TextStyle(
                color: textColor(context),
                fontSize: 18.0,
              ),
            ),
            Text(
              "${this.height.floor()}",
              style: TextStyle(
                fontSize: 50.0,
                color: textColor(context),
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: NeumorphicSlider(
                style: SliderStyle(
                  accent: sliderAccentColor(context),
                  variant: sliderVariantColor(context),
                ),
                min: 100,
                max: 200,
                value: this.height,
                onChanged: (value) {
                  this.onChanged(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NumberWithButtonCard extends StatelessWidget {
  final String title;
  final Function onClickMinus;
  final Function onClickPlus;
  final String value;

  const _NumberWithButtonCard(
      {@required this.title,
      this.value,
      @required this.onClickMinus,
      @required this.onClickPlus});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Neumorphic(
        style: NeumorphicStyle(shape: NeumorphicShape.convex),
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20.0)),
        //padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: textColor(context),
                fontSize: 18.0,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                color: textColor(context),
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                NeumorphicButton(
                  onClick: onClickMinus,
                  style: NeumorphicStyle(shape: NeumorphicShape.concave),
                  boxShape: NeumorphicBoxShape.circle(),
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(
                    FontAwesomeIcons.minus,
                    color: iconsColor(context),
                  ),
                ),
                SizedBox(width: 10.0),
                NeumorphicButton(
                  onClick: onClickPlus,
                  style: NeumorphicStyle(shape: NeumorphicShape.concave),
                  boxShape: NeumorphicBoxShape.circle(),
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(
                    FontAwesomeIcons.plus,
                    color: iconsColor(context),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

//           NeumorphicButton(
//               onClick: () {
//                 print("onClick");
//               },
//               style: NeumorphicStyle(shape: NeumorphicShape.concave),
//               boxShape: NeumorphicBoxShape.circle(),
//               padding: const EdgeInsets.all(12.0),
//               child: Icon(
//                 FontAwesomeIcons.ellipsisH,
//                 color: _iconsColor(context),
//               ),
//             )
