import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';



class BottomButton extends StatelessWidget {
  final String title;
  final Function onClick;

  const BottomButton({@required this.title, @required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: NeumorphicButton(
        onClick: onClick,
        style: NeumorphicStyle(shape: NeumorphicShape.convex),
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20.0)),
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: textColor(context),
            ),
          ),
        ),
      ),
    );
  }
}
