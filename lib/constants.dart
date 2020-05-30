import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

const kBottomContainerHeight = 60.0;
const kSecondaryColor = Color(0xFF59C8E3);
final kMainColor = Colors.grey[300];
const kSelectedTextColor = Colors.white;
//const kBottomContainerColor = Color(value);

const kAppBarTextStyle = TextStyle(
  fontSize: 25.0,
  color: Color(0xFF636A86),
);

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF9399AF),
);

const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  color: Color(0xFF636A86),
  fontWeight: FontWeight.w400,
);

const kBottomButtonTextStyle = TextStyle(
  fontSize: 25.0,
  //fontWeight: FontWeight.bold,
  color: Colors.white,
);

Color iconsColor(BuildContext context) {
  final theme = NeumorphicTheme.of(context);
  if (theme.isUsingDark) {
    return Colors.white;
    // return theme.current.accentColor;
  } else {
    return null;
  }
}

Color indicatorColor(BuildContext context) {
  final theme = NeumorphicTheme.of(context);
  if (theme.isUsingDark) {
    return Colors.white54;
    // return theme.current.accentColor;
  } else {
    return Colors.black54;
  }
}

Color textColor(BuildContext context) {
  final theme = NeumorphicTheme.of(context);
  if (theme.isUsingDark) {
    return Colors.white;
  } else {
    return Colors.black;
  }
}

Color sliderAccentColor(BuildContext context) {
  if (NeumorphicTheme.isUsingDark(context)) {
    return Colors.grey[700];
  } else {
    return Colors.grey[300];
  }
}

Color sliderVariantColor(BuildContext context) {
  if (NeumorphicTheme.isUsingDark(context)) {
    return Colors.grey[200];
  } else {
    return Colors.grey[700];
  }
}

