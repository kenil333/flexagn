import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kirantask/widget/style.dart';

import 'color.dart';

class JemsCard extends StatefulWidget {
  final String title;
  String left;
  final String img;
  String days;
  String deal;
  JemsCard({Key? key,
    required this.title,
    this.left = "",
    this.days = "",
    required this.img,
    this.deal = "",
  }) : super(key: key);

  @override
  State<JemsCard> createState() => _JemsCardState();
}

class _JemsCardState extends State<JemsCard> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => Stack(
        children: [
          Container(
            height: 335.h,
            width: 335.w,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 1.w,
                color: AppColor.contback,
              ),
              color: AppColor.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 2),
                  color: AppColor.shadowcolor,
                  blurRadius: 15.sp,
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 220.h,
                  width: 315.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColor.whiteback,
                  ),
                  child: Center(
                    child: Image(
                      image: AssetImage(widget.img),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        widget.left,
                        textAlign: TextAlign.end,
                        style: AppThemeData.themeData.textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.title,
                        style: AppThemeData.themeData.textTheme.headline2,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 40.h,
                          width: 130.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColor.orangecont,
                          ),
                          child: Text(
                            "Get for 100",
                            style: AppThemeData.themeData.textTheme.headline6,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            child: Positioned(
              top: 16.sp,
              child: Container(
                height: 45.h,
                width: 107.w,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(8),
                  ),
                  color: AppColor.yellow,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(widget.deal, style: AppThemeData.themeData.textTheme.headline1,),
                    Text(widget.days, style: AppThemeData.themeData.textTheme.headline2,),
                  ],
                ),
              ),
            ),
            visible: true,
          ),
        ],
      ),
    );
  }
}