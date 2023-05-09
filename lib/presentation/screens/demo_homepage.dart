
import 'package:flutter/material.dart';
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
  int _counter = 0;

 
bool dark=false;
  @override
  Widget build(BuildContext context) {
    final themeProvider= Provider.of<ThemeDataProvider>(context);
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
        actions: [
        
 Switch(
            activeColor: lightColorScheme.inversePrimary,
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
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
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
