import 'package:flutter/material.dart';
import 'package:sailor_clothing/config/theme/color_schemes.dart';

class ThemeDataProvider with ChangeNotifier{

  ThemeData _theme = ThemeData(
    // useMaterial3: true,
    colorScheme: lightColorScheme);
  ThemeData get originalTheme => _theme;
bool isDark = false;
  toogleTheme(){
  
    if(isDark){
      _theme= ThemeData(
    // useMaterial3: true,
    colorScheme: darkColorScheme);
    }else {
      _theme= ThemeData(
    // useMaterial3: true,
    colorScheme: lightColorScheme);
    }
    notifyListeners();
  }
set darkTheme(bool value){
      isDark = value;
      toogleTheme();
      notifyListeners();
  }
}