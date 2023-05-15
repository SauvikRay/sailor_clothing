import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_schemes.dart';

class TextFontStyle{
  TextFontStyle._();
  // Title large
  static final titleLarge = GoogleFonts.montserrat(
      color:lightColorScheme.scrim,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400);
// Title Medium
  static final titleMedium = GoogleFonts.montserrat(
      color:lightColorScheme.scrim,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400
      );
}

final lithTextTheme = TextTheme(
  titleLarge: TextFontStyle.titleLarge,
  titleMedium: TextFontStyle.titleMedium,
);

final darkTextTheme = TextTheme(
  titleLarge:TextFontStyle.titleLarge.copyWith(color: lightColorScheme.onPrimary),
  titleMedium:TextFontStyle.titleMedium.copyWith(color: lightColorScheme.onPrimary),
);