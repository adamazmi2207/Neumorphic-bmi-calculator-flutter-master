import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/bmi_1/neu_widgets_1/icon_button.dart';
import 'package:bmi_calculator/bmi_1/neu_widgets_1/primary_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'BMI Calculator',
            style: kAppBarTextStyle,
          ),
          ButtonTapped(icon: FontAwesomeIcons.ellipsisH),
          TopBarIconWidget(icon: FontAwesomeIcons.ellipsisH),
        ],
      ),
    );
  }
}

class TopBarIconWidget extends StatelessWidget {
  final IconData icon;

  TopBarIconWidget({@required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Icon(
        icon,
        size: 20,
        color: Colors.grey[800],
      ),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[300],
          boxShadow: [
            BoxShadow(
                color: Colors.grey[600],
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey[200],
                Colors.grey[300],
                Colors.grey[400],
                Colors.grey[500],
              ],
              stops: [
                0.1,
                0.3,
                0.8,
                1
              ])),
    );
  }
}

class ButtonTapped extends StatelessWidget {
  var icon;

  ButtonTapped({
    Key key,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Container(
        padding: EdgeInsets.all(5),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Icon(
            icon,
            size: 20,
            color: Colors.grey[700],
          ),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[300],
              boxShadow: [
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: Colors.grey[600],
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ],
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.grey[700],
                    Colors.grey[600],
                    Colors.grey[500],
                    Colors.grey[200],
                  ],
                  stops: [
                    0,
                    0.1,
                    0.3,
                    1
                  ])),
        ),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[600],
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.grey[200],
                  Colors.grey[300],
                  Colors.grey[400],
                  Colors.grey[500],
                ],
                stops: [
                  0.1,
                  0.3,
                  0.8,
                  1
                ])),
      ),
    );
  }
}
