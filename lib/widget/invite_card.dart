import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kirantask/widget/color.dart';
import 'package:kirantask/widget/style.dart';

class InviteCard extends StatefulWidget {
  final String title;
  String invite;
  String left;
  final String img;
  String days;
  String deal;
  InviteCard({Key? key,
  required this.title,
    this.invite = "",
    this.left = "",
    this.days = "",
    required this.img,
    this.deal = "",
  }) : super(key: key);

  @override
  _InviteCardState createState() => _InviteCardState();
}

class _InviteCardState extends State<InviteCard> {
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
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 2),
                  color: AppColor.shadowcolor,
                  blurRadius: 15.sp,
                )
              ],
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColor.pink,
                  AppColor.orange,
                ],
              ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.invite,
                          maxLines: 2,
                          style: AppThemeData.themeData.textTheme.headline4,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          widget.left,
                          textAlign: TextAlign.end,
                          style: AppThemeData.themeData.textTheme.headline5,
                        ),
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
                        style: AppThemeData.themeData.textTheme.headline3,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 40.h,
                          width: 130.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: AppColor.blue,
                            border: Border.all(
                                width: 1.w, color: AppColor.whitefont),
                          ),
                          child: Text(
                            "Invite Friend",
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
