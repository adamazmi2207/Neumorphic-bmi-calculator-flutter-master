import 'package:bmi_calculator/bmi_2/screens/input_page_2.dart';
import 'package:bmi_calculator/bmi_2/theme_model.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primaryColor: kMainColor,
      //   scaffoldBackgroundColor: kMainColor,
      //    //scaffoldBackgroundColor: kMainColor,
      //   accentColor: kSecondaryColor,
      // ),
      // home: InputPage(),
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "galaxy"),
      //theme: Provider.of<ThemeModel>(context).currentTheme,
      home: NeumorphicTheme(
          usedTheme: UsedTheme.LIGHT,
          theme: NeumorphicThemeData(
            //baseColor: kMainColor,
            lightSource: LightSource.topLeft,
            depth: 10,
          ),
          darkTheme: NeumorphicThemeData(
            baseColor: Color(0xFF3E3E3E),
            lightSource: LightSource.topLeft,
            depth: 4,
          ),
          child: InputPage2()),
    );
  }
}
