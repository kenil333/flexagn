import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kirantask/widget/color.dart';
import 'package:kirantask/widget/style.dart';

import 'modal.dart';

class InviteCard extends StatefulWidget {
  final Data data;

  InviteCard({Key? key, required this.data}) : super(key: key);

  @override
  _InviteCardState createState() => _InviteCardState();
}

class _InviteCardState extends State<InviteCard> {
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
                padding: EdgeInsets.only(right: 5.w, left: 5.w, bottom: 12.w, top: 12.h),
                child: Row(
                  children: [
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.data.invites,
                            maxLines: 2,
                            style: AppThemeData.themeData.textTheme.headline4,
                          ),
                          SizedBox(
                            height: 19.h,
                          ),
                          Text(
                            widget.data.title,
                            style: AppThemeData.themeData.textTheme.headline3,
                          ),
                        ],
                      ),),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          widget.data.left,
                          textAlign: TextAlign.end,
                          style: AppThemeData.themeData.textTheme.headline5,

                        ),
                        SizedBox(height: 16.h,),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 40.h,
                            width: 130.w,
                            // alignment: Alignment.center,
                            // padding: EdgeInsets.symmetric(
                            //     vertical: 10.h, horizontal: 21),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r),
                              color: AppColor.blue,
                              border:
                              Border.all(width: 1.w, color: AppColor.whitefont),
                            ),
                            child: Center(
                              child: Text(
                                "Invite Friend",
                                style: AppThemeData.themeData.textTheme.headline6,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),),
                  ],
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 15.w),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Expanded(
              //         child: Text(
              //           widget.data.invites,
              //           maxLines: 2,
              //           style: AppThemeData.themeData.textTheme.headline4,
              //         ),
              //       ),
              //       Expanded(
              //         child: Text(
              //           widget.data.left,
              //           textAlign: TextAlign.end,
              //           style: AppThemeData.themeData.textTheme.headline5,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.only(right: 15.w, left: 15.w),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(
              //         widget.data.title,
              //         style: AppThemeData.themeData.textTheme.headline3,
              //       ),
              //       GestureDetector(
              //         onTap: () {},
              //         child: Container(
              //           height: 40.h,
              //           width: 130.w,
              //           alignment: Alignment.center,
              //           padding: EdgeInsets.symmetric(
              //               vertical: 10.h, horizontal: 21),
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(50.r),
              //             color: AppColor.blue,
              //             border:
              //                 Border.all(width: 1.w, color: AppColor.whitefont),
              //           ),
              //           child: Text(
              //             "Invite Friend",
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
