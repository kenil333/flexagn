import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color.dart';

class AppThemeData {

  static ThemeData themeData = ThemeData(

    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
        color: AppColor.greenfont,
        fontFamily: 'Poppins',
      ),
      headline2: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: AppColor.blackfont,
        fontFamily: 'Poppins',
      ),
      headline3: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: AppColor.whitefont,
        fontFamily: 'Poppins',
      ),
      headline4: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        color: AppColor.whitefont,
        fontFamily: 'Poppins',
      ),
      headline5: TextStyle(
        fontSize: 12.sp,
        color: AppColor.whitefont,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
      ),
      bodyText1: TextStyle(
        fontSize: 12.sp,
        color: AppColor.orangefont,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
      ),
      headline6: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      color: AppColor.whitefont,
        fontFamily: 'Poppins',
    ),
    ),
  );
}