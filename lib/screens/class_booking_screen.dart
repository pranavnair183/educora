import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import '../widgets/cb_calender.dart';
import 'package:intl/intl.dart';
import '../utils/utils.dart';

class ClassBookingScreen extends StatefulWidget {
  static String routeName = ViewRouter.classBooking;
  const ClassBookingScreen({Key? key}) : super(key: key);

  @override
  _ClassBookingScreenState createState() => _ClassBookingScreenState();
}

class _ClassBookingScreenState extends State<ClassBookingScreen> {
  DateTime? displayDate;
  void updateDate(DateTime date) {
    setState(() {
      displayDate = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10.h,
        leading: Builder(builder: (context) {
          return Padding(
              padding: EdgeInsets.only(top: 0.h),
              child: IconButton(
                icon: Icon(Icons.arrow_back,
                    size: 5.h, color: Theme.of(context).iconTheme.color),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ));
        }),
        title: Text(AppConstant.classBooking,
            style: Theme.of(context).textTheme.headline4),
        centerTitle: true,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 4.w, top: 3.h),
              child: Stack(children: [
                Icon(
                  Icons.notifications_none,
                  size: 28.sp,
                  color: Theme.of(context).iconTheme.color,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7.sp, left: 4.sp),
                  child: Container(
                    height: 9.sp,
                    width: 10.sp,
                    decoration: BoxDecoration(
                      color: AppColorData.notificationDot,
                      border: Border.all(
                        color: AppColorData.notificationDot,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ]))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: CustomCalendar(
                updateDate: updateDate,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                children: [
                  Text(AppConstant.availableClasses,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.w700))
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Image.asset(Resource.cbFooter, height: 130.sp),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppConstant.figmaClass,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.w700)),
                  Row(children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      color: AppColorData.calenderIcon,
                      size: 12.sp,
                    ),
                    Text(
                      (displayDate != null)
                          ? DateFormat('  d MMMM yyyy').format(displayDate!)
                          : AppConstant.selectADate,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.grey),
                    ),
                  ]),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
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
            SizedBox(
              height: 2.h,
            )
          ],
        ),
      ),
    );
  }
}
