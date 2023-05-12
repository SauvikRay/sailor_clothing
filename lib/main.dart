import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sailor_clothing/presentation/provider/theme_provider.dart';
import 'presentation/screens/demo_homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
     
      providers: [
        ChangeNotifierProvider(create: (_)=>ThemeDataProvider())
      ],
      child:
      
      Consumer<ThemeDataProvider>(
        builder:(context,themeProvider,child){
          return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sailor Clothing',
        theme: themeProvider.originalTheme,
        themeMode: ThemeMode.system,
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      );
        }
        )
      
    
    
    );
 
  // return ChangeNotifierProvider(
    
  //   create:(_)=> ThemeDataProvider(),
  //   builder:(context,child){
  //   final themeProvider = Provider.of<ThemeDataProvider>(context);    
  //            return MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       title: 'Sailor Clothing',
  //       theme: themeProvider.originalTheme,
  //       darkTheme: ThemeData.dark(),
      
  //       // themeMode: ThemeMode.dark,
      
  //       // ThemeData(
  //       //   useMaterial3: true,
  //       //   colorScheme: lightColorScheme
          
  //       // ),
  //       // darkTheme:ThemeData(
  //       //   useMaterial3: true,
  //       //   colorScheme: darkColorScheme
  //       // ),
  //       home: const MyHomePage(title: 'Flutter Demo Home Page'),
  //     );
  //       }
  //       );




  
  }
}
