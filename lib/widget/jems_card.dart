import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kirantask/widget/style.dart';

import 'color.dart';
import 'modal.dart';

class JemsCard extends StatefulWidget {
  final Data data;

  JemsCard({Key? key, required this.data}) : super(key: key);

  @override
  State<JemsCard> createState() => _JemsCardState();
}

class _JemsCardState extends State<JemsCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 335.h,
          width: 335.w,
          padding: EdgeInsets.only(top: 10.w, right: 10.w, left: 10.w),
          margin: EdgeInsets.only(bottom: 15.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
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
                  borderRadius: BorderRadius.circular(8.r),
                  color: AppColor.whiteback,
                ),
                child: Center(
                  child: Image(
                    image: AssetImage(widget.data.img),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 5.h, left: 5.h, bottom: 15.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.data.title,
                      style: AppThemeData.themeData.textTheme.headline2,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            widget.data.left,
                            textAlign: TextAlign.end,
                            style: AppThemeData.themeData.textTheme.bodyText1,
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 40.h,
                              width: 145.w,
                              // alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.r),
                                color: AppColor.orangecont,
                              ),
                              child: Center(
                                child: Text(
                                  "Get for 100",
                                  style:
                                      AppThemeData.themeData.textTheme.headline6,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 5.w),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Text(
              //         widget.data.left,
              //         textAlign: TextAlign.end,
              //         style: AppThemeData.themeData.textTheme.bodyText1,
              //       ),
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 5.w),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(
              //         widget.data.title,
              //         style: AppThemeData.themeData.textTheme.headline2,
              //       ),
              //       GestureDetector(
              //         onTap: () {},
              //         child: Container(
              //           height: 40.h,
              //           width: 145.w,
              //           alignment: Alignment.center,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(50.r),
              //             color: AppColor.orangecont,
              //           ),
              //           child: Text(
              //             "Get for 100",
              //             style: AppThemeData.themeData.textTheme.headline6,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
        Visibility(
          child: Positioned(
            top: 16.sp,
            child: Container(
              height: 45.h,
              width: 107.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(8.r),
                ),
                color: AppColor.yellow,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.data.deal,
                    style: AppThemeData.themeData.textTheme.headline1,
                  ),
                  Text(
                    widget.data.days,
                    style: AppThemeData.themeData.textTheme.headline2,
                  ),
                ],
              ),
            ),
          ),
          visible: true,
        ),
      ],
    );
  }
}
