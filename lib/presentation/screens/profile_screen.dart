import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../config/theme/color_schemes.dart';
import '../../utils/helpers/space_helper.dart';
import '../provider/theme_provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  bool dark=false;
  @override
  Widget build(BuildContext context) {
      
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text('Profile Screen',style:Theme.of(context).textTheme.titleMedium,),
      ),
      

    );
  }
}