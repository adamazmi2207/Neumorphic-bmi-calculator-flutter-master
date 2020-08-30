import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopBar extends StatelessWidget {
  final String title;

  const TopBar({this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // NeumorphicButton(
        //   //margin: EdgeInsets.only(top: 12),
        //   onClick: () {
        //     NeumorphicTheme.of(context).usedTheme =
        //         NeumorphicTheme.isUsingDark(context)
        //             ? UsedTheme.LIGHT
        //             : UsedTheme.DARK;
        //   },
        //   style: NeumorphicStyle(shape: NeumorphicShape.concave),
        //   boxShape: NeumorphicBoxShape.circle(),
        //   padding: const EdgeInsets.all(12.0),
        //   child: NeumorphicTheme.isUsingDark(context)
        //       ? Icon(FontAwesomeIcons.solidSun, color: iconsColor(context))
        //       : Icon(FontAwesomeIcons.moon, color: iconsColor(context)),
        //   // Icon(FontAwesomeIcons.adjust, color: iconsColor(context)),
        // ),
        Text(
          title,
          style: TextStyle(fontSize: 24.0, color: textColor(context)),
        ),
        NeumorphicButton(
          //margin: EdgeInsets.only(top: 12),
          onClick: () {
            NeumorphicTheme.of(context).usedTheme =
                NeumorphicTheme.isUsingDark(context)
                    ? UsedTheme.LIGHT
                    : UsedTheme.DARK;
          },
          style: NeumorphicStyle(shape: NeumorphicShape.concave),
          boxShape: NeumorphicBoxShape.circle(),
          padding: const EdgeInsets.all(12.0),
          child: NeumorphicTheme.isUsingDark(context)
              ? Icon(FontAwesomeIcons.solidSun, color: iconsColor(context))
              : Icon(FontAwesomeIcons.moon, color: iconsColor(context)),
        ),
      ],
    );
  }
}
