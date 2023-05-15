import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../config/theme/color_schemes.dart';
import '../../utils/helpers/space_helper.dart';
import '../provider/theme_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
      

    );
  }
}