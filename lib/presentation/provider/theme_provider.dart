import 'dart:async';

import 'package:flutter/material.dart';
import 'package:light/light.dart';
import 'package:sailor_clothing/config/theme/color_schemes.dart';

class ThemeDataProvider with ChangeNotifier{
bool _dark = false;
  ThemeData _theme = ThemeData(
    // useMaterial3: true,
    colorScheme: lightColorScheme);
  ThemeData get originalTheme => _theme;
  String get luxValue=>_luxString;
  bool get dark=>_dark;
bool isDark = false;
  toogleTheme(){
  
    if(isDark){
      Future.delayed(
         const Duration(milliseconds: 200),
         ()async{
    _theme= ThemeData(
    // useMaterial3: true,
    colorScheme: darkColorScheme);
         }
      );
  
    }else {
      Future.delayed(
        const Duration(milliseconds: 200),
        ()async{
              _theme= ThemeData(
    // useMaterial3: true,
    colorScheme: lightColorScheme);
        }
      );
    
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
   
  }

    void startListening() {
    _light = Light();
    try {
      _subscription = _light.lightSensorStream.listen(onData);
     
    } on LightException catch (exception) {
      print(exception);
    }
    
  }

  void onData(int luxValue) async {

    print("Lux value: $luxValue");
    if(luxValue>40){
    
     
      _luxString = "$luxValue";
      _dark =false;
      darkTheme = _dark;
    
   }else{
    _dark=true;
      darkTheme = _dark;
   }
     notifyListeners();
  }
}