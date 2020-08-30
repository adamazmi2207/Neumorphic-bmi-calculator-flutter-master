import 'dart:ui';

import 'package:bmi_calculator/bmi_2/neu_widgets_2/bottom_button.dart';
import 'package:bmi_calculator/bmi_2/neu_widgets_2/top_bar.dart';
import 'package:bmi_calculator/bmi_2/screens/input_page_2.dart';
//import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:percent_indicator/percent_indicator.dart';

// if NeumorphicTheme.of(context).usedTheme =
//                 NeumorphicTheme.isUsingDark(context)
//                     ? UsedTheme.LIGHT
//                     : UsedTheme.DARK;

class ResultPage2 extends StatelessWidget {
  final String bmiResult;
  final String bfResult;
  final double bmiResultPercent;
  final String bmiResultText;
  final String bmiInterpretation;
  final UsedTheme inputPageTheme;

  const ResultPage2(
      {this.bmiResult,
      this.bmiResultText,
      this.bmiInterpretation,
      this.inputPageTheme,
      this.bmiResultPercent,
      this.bfResult});

  @override
  Widget build(BuildContext context) {
    final theme = NeumorphicTheme.currentTheme(context);
    final baseColor = theme.baseColor;
    final accentColor = theme.accentColor;

    Color _textColor(BuildContext context) {
      if (inputPageTheme == UsedTheme.LIGHT) {
        return Colors.black;
      } else {
        return Colors.white;
      }
    }

    Color _backgroundColor(BuildContext context) {
      if (inputPageTheme == UsedTheme.LIGHT) {
        return NeumorphicTheme.baseColor(context);
        // return theme.current.accentColor;
      } else {
        return Color(0xFF3E3E3E);
      }
    }

    Color _progressAccentColor(BuildContext context) {
      if (inputPageTheme == UsedTheme.LIGHT) {
        return Colors.grey[900];
      } else {
        return Colors.grey[300];
      }
    }

    Color _progressVariantColor(BuildContext context) {
      if (inputPageTheme == UsedTheme.LIGHT) {
        return Colors.grey[500];
      } else {
        return Colors.grey[700];
      }
    }

    return NeumorphicTheme(
      usedTheme: inputPageTheme,
      child: Scaffold(
        backgroundColor: _backgroundColor(context),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 51.0, 30.0, 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Text(
                  "BMI Result",
                  style: TextStyle(
                    fontSize: 24.0,
                    color: _textColor(context),
                  ),
                ),
              ),
              Neumorphic(
                style: NeumorphicStyle(shape: NeumorphicShape.concave),
                boxShape: NeumorphicBoxShape.circle(),
                padding: const EdgeInsets.all(20.0),
                child: CircularPercentIndicator(
                  linearGradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment(0.8, 0.7),
                    colors: [
                      _progressAccentColor(context),
                      _progressVariantColor(context)
                    ],
                  ),
                  backgroundColor: Colors.black12,
                  radius: 220.0,
                  lineWidth: 20.0,
                  animation: true,
                  percent: bmiResultPercent,
                  center: Text(
                    bmiResult,
                    style: TextStyle(
                      fontSize: 50.0,
                      color: _textColor(context),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                ),
              ),
              SizedBox(height: 20.0),
              Expanded(
                child: Text(
                  "You body weight is " + bmiResultText,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: _textColor(context),
                  ),
                ),
              ),
              BottomButton(
                title: "RE-CALCULATE",
                onClick: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 35),

              // BottomButton(
              //   title: "DEBUG",
              //   onClick: () {
              //     print(inputPageTheme);
              //     print(baseColor);
              //     print(theme);
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
