import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return  ScreenUtilInit(
            designSize:const Size(360,690),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
           return  MultiProvider(
     
           providers: [
            ChangeNotifierProvider(create: (_)=>ThemeDataProvider())
           ],
      child: Consumer<ThemeDataProvider>(
        builder:(context,themeProvider,child){
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Sailor Clothing',
              theme: themeProvider.originalTheme,
              themeMode: ThemeMode.system,
              home: const MyHomePage(title: 'Sailor Cloathing'),
           );
         },
      )
      );
    }   
 );
      
    
    
  




  
  }
}
