
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:sailor_clothing/presentation/provider/theme_provider.dart';
import 'package:sailor_clothing/utils/helpers/space_helper.dart';

import '../../config/theme/color_schemes.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

@override
  void initState() {

    super.initState();
  }
 

bool dark=false;
  @override
  Widget build(BuildContext context) {
    final themeProvider= Provider.of<ThemeDataProvider>(context,listen: true);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: themeProvider.isDark ? SvgPicture.asset('assets/icons/sailor_dark.svg',height: 45,) : SvgPicture.asset('assets/icons/sailor.svg',height:45),
        actions: [
        
            Switch(
                activeColor: lightColorScheme.inversePrimary,
                activeThumbImage:const AssetImage('assets/icons/off.png'),
                inactiveThumbImage: const AssetImage('assets/icons/on.png'),
                value: dark, 
                onChanged: (value){
                setState(() {
                  dark = !dark;
                });
                themeProvider.darkTheme = dark;
              }),
        SpaceHelper.horizontalSpace(2.w),
        IconButton(
          splashRadius: 20,
          onPressed: (){}, 
          icon: const Icon(CupertinoIcons.search),
          color: IconTheme.of(context).color,
          
          )
      
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Text(
            'Text Theme Big',
            style: Theme.of(context).textTheme.titleLarge,
          ), 

        ],
      ),
 
    );
  }
}
