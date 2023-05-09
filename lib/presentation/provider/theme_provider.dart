import 'dart:async';

import 'package:flutter/material.dart';
import 'package:light/light.dart';
import 'package:sailor_clothing/config/theme/color_schemes.dart';

class ThemeDataProvider with ChangeNotifier{

  ThemeData _theme = ThemeData(
    // useMaterial3: true,
    colorScheme: lightColorScheme);
  ThemeData get originalTheme => _theme;
  String get luxValue=>_luxString;
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



  String _luxString = 'Unknown';
  late Light _light;
  late StreamSubscription _subscription;

   Future<void> initPlatformState() async {
    startListening();
    notifyListeners();
  }

    void startListening() {
    _light = Light();
    try {
      _subscription = _light.lightSensorStream.listen(onData);
      notifyListeners();
    } on LightException catch (exception) {
      print(exception);
    }
    notifyListeners();
  }

  void onData(int luxValue) async {

    print("Lux value: $luxValue");
    if(luxValue>20){
    
     
      _luxString = "$luxValue";
    
   }
     notifyListeners();
  }
}