import 'package:flutter/material.dart';

import 'color_schemes.dart';
import 'text_style.dart';

class ThemeClass{
  ThemeClass._();
  //Light Theme
  static final ThemeData lightTheme = ThemeData(
    textTheme:lithTextTheme ,
    colorScheme: lightColorScheme,
    appBarTheme: AppBarTheme(
      backgroundColor: lightColorScheme.onPrimary
    )
    );
  //Dark Theme
  static final ThemeData darkTheme = ThemeData(
        colorScheme: darkColorScheme,
        textTheme:darkTextTheme ,
    );
}