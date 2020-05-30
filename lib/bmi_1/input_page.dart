import 'package:bmi_calculator/bmi_1/neu_widgets_1/bottom_card.dart';
import 'package:bmi_calculator/bmi_1/neu_widgets_1/icon_button.dart';
import 'package:bmi_calculator/bmi_1/neu_widgets_1/primary_card.dart';
import 'package:bmi_calculator/bmi_1/neu_widgets_1/top_bar_icon.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 60;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 5.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TopBar(),
              SizedBox(height: 20.0),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          print("Pressed");
                        },
                        child: PrimaryCardWidget(
                          color: kMainColor,
                          cardChild: CardIconWidget(
                            icon: FontAwesomeIcons.mars,
                            size: 60.0,
                            title: "MALE",
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          print("Pressed");
                        },
                        child: PrimaryCardTapped(
                          color: kMainColor,
                          cardChild: CardIconWidget(
                            size: 60.0,
                            icon: FontAwesomeIcons.venus,
                            title: "FEMALE",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: PrimaryCardWidget(
                  color: kMainColor,
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: PrimaryCardWidget(
                        color: kMainColor,
                      ),
                    ),
                    Expanded(
                      child: PrimaryCardWidget(
                        color: kMainColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              BottomCardWidget(
                title: "CALCULATE",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
