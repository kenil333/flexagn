import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color.dart';

class AppThemeData {

  static ThemeData themeData = ThemeData(

    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w500,
        color: AppColor.greenfont,
      ),
      headline2: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        color: AppColor.blackfont,
      ),
      headline3: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        color: AppColor.whitefont,
      ),
      headline4: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
        color: AppColor.whitefont,
      ),
      headline5: TextStyle(
        fontSize: 12.sp,
        color: AppColor.whitefont,
      ),
      bodyText1: TextStyle(
        fontSize: 12.sp,
        color: AppColor.orangefont,
      ),
      headline6: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w700,
      color: AppColor.whitefont,
    ),
    ),
  );
}