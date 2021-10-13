import 'package:educora/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/pt_tab.dart';

class TeachersBookingScreen extends StatefulWidget {
  static String routeName = ViewRouter.teacherBooking;
  const TeachersBookingScreen({Key? key}) : super(key: key);

  @override
  _TeachersBookingScreenState createState() => _TeachersBookingScreenState();
}

class _TeachersBookingScreenState extends State<TeachersBookingScreen> {
  int? activeBlock = 2;
  int? activeTab;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10.h,
        leading: Builder(builder: (context) {
          return Padding(
              padding: EdgeInsets.only(top: 0.h),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 5.h,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ));
        }),
        title: Text(
          AppConstant.teachersBooking,
          style: Theme.of(context).textTheme.headline4!,
        ),
        centerTitle: true,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 4.w, top: 3.h),
              child: Stack(children: [
                Icon(
                  Icons.notifications_none,
                  size: 28.sp,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7.sp, left: 4.sp),
                  child: Container(
                    height: 9.sp,
                    width: 10.sp,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(
                        color: Colors.red,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ]))
        ],
      ),
      body: Stack(children: [
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 3.h, right: 5.w, left: 5.w),
            child: Column(
                children: [
                      Row(
                        children: [
                          Text(
                            AppConstant.bookAppointment,
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(fontWeight: FontWeight.w700),
                          ),
                          const Spacer(),
                          SvgPicture.asset(
                            Resource.tbIcon,
                            height: 3.5.h,
                            color: Colors.black,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.h),
                                color: AppColorData.tbDaysBg,
                              ),
                              child: Row(
                                  children: List.generate(
                                      6,
                                      (index) => Expanded(
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  activeBlock = index;
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          (index == activeBlock)
                                                              ? 2.h
                                                              : 0),
                                                  color: (index == activeBlock)
                                                      ? Theme.of(context)
                                                          .primaryColor
                                                      : Colors.transparent,
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 14.sp,
                                                      horizontal: 8.sp),
                                                  child: Center(
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          (index + 16)
                                                              .toString(),
                                                          style: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .headline2!
                                                              .copyWith(
                                                                  color: (index ==
                                                                          activeBlock)
                                                                      ? Colors
                                                                          .white
                                                                      : const Color
                                                                              .fromRGBO(
                                                                          90,
                                                                          90,
                                                                          90,
                                                                          1)),
                                                        ),
                                                        Text(
                                                          AppConstant.mar,
                                                          style: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .headline6!
                                                              .copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  color: (index ==
                                                                          activeBlock)
                                                                      ? Colors
                                                                          .white
                                                                      : const Color
                                                                              .fromRGBO(
                                                                          90,
                                                                          90,
                                                                          90,
                                                                          1)),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ))),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Text(
                            AppConstant.threeTeachersAvailable,
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            AppConstant.eighteenMarch,
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                                    fontWeight: FontWeight.w800,
                                    color: Theme.of(context).primaryColor),
                          ),
                        ],
                      ),
                    ] +
                    List.generate(
                      3,
                      (index) => Padding(
                        padding: EdgeInsets.only(top: 2.h),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              activeTab = index;
                            });
                          },
                          child: PtTab(
                            title: AppConstant.info[index]['title'],
                            years: AppConstant.info[index]['years'],
                            imgPath: AppConstant.info[index]['imgPath'],
                            isFirst: (activeTab == index) ? true : false,
                          ),
                        ),
                      ),
                    ) +
                    [
                      SizedBox(
                        height: 20.h,
                      ),
                    ]),
          ),
        ),
        if (activeTab != null)
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
              child: ElevatedButton(
                  onPressed: () {},
                  style: Theme.of(context).elevatedButtonTheme.style,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: SizedBox(
                      width: 100.w,
                      child: Text(
                        AppConstant.bookNow,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              fontWeight: FontWeight.w700,
                              color: AppColorData.primaryTxt,
                            ),
                      ),
                    ),
                  )),
            ),
          )
      ]),
    );
  }
}
