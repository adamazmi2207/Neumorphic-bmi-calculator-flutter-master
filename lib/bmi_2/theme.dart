import 'package:bmi_calculator/constants.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

NeumorphicThemeData lightTheme = NeumorphicThemeData(
  baseColor: kMainColor,
  lightSource: LightSource.topLeft,
  depth: 10,
);

NeumorphicThemeData darkTheme = NeumorphicThemeData(
  baseColor: Color(0xFF3E3E3E),
  lightSource: LightSource.topLeft,
  depth: 4,
);
