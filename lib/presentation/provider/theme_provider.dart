import 'package:flutter/material.dart';
import '../../config/theme/theme.dart';

class ThemeDataProvider with ChangeNotifier{

  ThemeData _theme = ThemeClass.lightTheme;
  ThemeData get originalTheme => _theme;
  bool get isDark =>_isDark;

  bool _isDark = false;
      toogleTheme(){
      
        if(_isDark){
          _theme= ThemeClass.darkTheme;
        }else {
          _theme= ThemeClass.lightTheme;
        }
        notifyListeners();
      }

    set darkTheme(bool value){
        _isDark = value;
        toogleTheme();
        notifyListeners();
    }

}