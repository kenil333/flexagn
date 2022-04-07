import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kirantask/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kirantask/widget/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () =>
          MaterialApp(
            theme: AppThemeData.themeData,
            debugShowCheckedModeBanner: false,
            home: const HomeScreen(),
          ),
    );
  }
}
