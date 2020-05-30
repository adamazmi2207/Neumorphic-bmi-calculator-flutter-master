import 'package:bmi_calculator/bmi_2/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

enum ThemeType { Light, Dark }

class ThemeModel extends ChangeNotifier {
  NeumorphicThemeData currentTheme = darkTheme;
  ThemeType _themeType = ThemeType.Dark;

  toggleTheme() {
    if (_themeType == ThemeType.Dark) {
      currentTheme = lightTheme;
      _themeType = ThemeType.Light;
      return notifyListeners();
    }

    if (_themeType == ThemeType.Light) {
      currentTheme = darkTheme;
      _themeType = ThemeType.Dark;
      return notifyListeners();
    }
  }
}
