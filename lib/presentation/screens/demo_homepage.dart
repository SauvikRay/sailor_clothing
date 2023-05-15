
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sailor_clothing/presentation/screens/home.dart';
import 'package:sailor_clothing/presentation/screens/profile_screen.dart';
import 'home_screen.dart';


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

int _currentIndex=0; 
 List<Widget> screens=[
  HomeScreen(),
  ProfileScreen(),
  ProfileScreen(),
  Text('sdfs')
 ];


  @override
  Widget build(BuildContext context) {

    final width= ScreenUtil().screenWidth;
    final height= ScreenUtil().screenHeight;

    log('$width,$height');
    return Scaffold(
     
      body: screens[_currentIndex],
      // Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: <Widget>[
      
      //       Text(
      //         'Text Theme Title Large',
      //         style: Theme.of(context).textTheme.titleLarge,
      //       ),
      //       SpaceHelper.verticalSpace(5),   
            
      //        Text(
      //         'Text Theme Title Medium',
      //         style: Theme.of(context).textTheme.titleMedium,
      //       ),    
      //       // Text(
      //       //   'Text Theme Title Large',
      //       //   style: Theme.of(context).textTheme.titleMedium,
      //       // ), 
      
      //     ],
      //   ),
      // ),

    //   bottomNavigationBar:CupertinoTabBar(
      
    //   items:<BottomNavigationBarItem> [
    //   BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
    //   BottomNavigationBarItem(icon: Icon(Icons.pending_actions_sharp)),
    // ],
    // currentIndex: _currentIndex,
    // onTap: (index){
    //   setState(() {
    //     _currentIndex = index;
    //   });
    // },
    // ), 

    bottomNavigationBar: CustomLineIndicatorBottomNavbar(
         selectedColor: Colors.blue,
        unSelectedColor: Colors.black54,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        unselectedIconSize: 15,
        selectedIconSize: 20,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
                enableLineIndicator: true,
        lineIndicatorWidth: 3,
        indicatorType: IndicatorType.Top,
        customBottomBarItems: [
            CustomBottomBarItems(
            label: 'Home',
            icon: Icons.home,
          ),
          CustomBottomBarItems(
            label: 'Account',
            icon: Icons.account_box_outlined,
          ),
          CustomBottomBarItems(
              label: 'Leaves', icon: Icons.calendar_today_outlined),
          CustomBottomBarItems(
            label: 'Loyalty',
            icon: Icons.card_giftcard_rounded,
          ),
          // CustomBottomBarItems(
          //   label: 'Requests',
          //   icon: Icons.list,
          // ),
        ],
    ),
 
    );
  

  }
}
