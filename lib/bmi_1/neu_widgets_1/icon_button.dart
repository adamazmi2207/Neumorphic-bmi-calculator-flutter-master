import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CardIconWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final double size;

  CardIconWidget({this.title, @required this.icon, @required this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: size,
          color: Colors.grey[800],
        ),
        SizedBox(height: 15.0),
        Text(title, style: kLabelTextStyle),
      ],
    );
  }
}
