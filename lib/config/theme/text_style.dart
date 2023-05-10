import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_schemes.dart';

class TextFontStyle{
  TextFontStyle._();
  static final titleLarge = GoogleFonts.montserrat(
      color:lightColorScheme.scrim,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400);
}


final lithTextTheme = TextTheme(
  titleLarge: TextFontStyle.titleLarge
);

final darkTextTheme = TextTheme(
  titleLarge:TextFontStyle.titleLarge.copyWith(color: lightColorScheme.onPrimary)
);