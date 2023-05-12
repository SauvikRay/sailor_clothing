
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:light/light.dart';
import 'package:provider/provider.dart';
import 'package:sailor_clothing/presentation/provider/theme_provider.dart';

import '../../config/theme/color_schemes.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
 String _luxString = 'Unknown';
  late Light _light;
  late StreamSubscription _subscription;

  void onData(int luxValue) async {

    print("Lux value: $luxValue");
    if(luxValue>20){
    setState(() {
      dark=true;
      _luxString = "$luxValue";
    
    });}else{
      setState(() {
           dark=false;
         
           
      });
    }
  }

  void stopListening() {
    _subscription.cancel();
  }

  void startListening() {
    _light = Light();
    try {
      _subscription = _light.lightSensorStream.listen(onData);
    } on LightException catch (exception) {
      print(exception);
    }
  }


@override
  void initState() {
    // TODO: implement initState
    // initPlatformState();
    super.initState();
  }
   Future<void> initPlatformState() async {
    startListening();
  }

 
bool dark=false;
  @override
  Widget build(BuildContext context) {
    final themeProvider= Provider.of<ThemeDataProvider>(context,listen: true);
   themeProvider.initPlatformState();
   dark = themeProvider.dark;
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
        actions: [
        
 Switch(
            activeColor: lightColorScheme.inversePrimary,
            activeThumbImage:AssetImage('assets/icons/off.png'),
            inactiveThumbImage: AssetImage('assets/icons/on.png'),
            
            value: dark, 
            onChanged: (value){
           
            setState(() {
              dark = !dark;
            });
            themeProvider.darkTheme=dark;
          }),
          

        ],
      ),
      body: Center(
     
        child: Column(
       
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           
            Text(
              'Lux value: ${themeProvider.luxValue}\n',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
