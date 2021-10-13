import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import '../utils/utils.dart';
import 'package:educora/widgets/chart.dart';

class MyActivityScreen extends StatefulWidget {
  static const routeName = ViewRouter.myActivity;
  const MyActivityScreen({Key? key}) : super(key: key);

  @override
  _MyActivityScreenState createState() => _MyActivityScreenState();
}

class _MyActivityScreenState extends State<MyActivityScreen> {
  bool _isDay = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 6.w),
            child: Container(
                height: 40.h,
                padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 3.w),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(6.h),
                ),
                child: const Chart()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 60.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.h),
                  color: Theme.of(context).primaryColor,
                ),
                child: Padding(
                  padding: EdgeInsets.all(0.3.h),
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _isDay = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: (_isDay == true)
                                  ? AppColorData.dayWeekSwitchActive
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(1.h),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 1.h),
                              child: Text(
                                AppConstant.day,
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                        color: (_isDay == true)
                                            ? Theme.of(context).primaryColor
                                            : AppColorData.dayWeekSwitchActive),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _isDay = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: (_isDay == false)
                                  ? AppColorData.dayWeekSwitchActive
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(1.h),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 1.h),
                              child: Text(
                                AppConstant.week,
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                      color: (_isDay == false)
                                          ? Theme.of(context).primaryColor
                                          : AppColorData.dayWeekSwitchActive,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: EdgeInsets.all(1.h),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(1.h),
                    child: Container(
                      padding: EdgeInsets.all(2.h),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                      child: Column(
                        children: [
                          Row(children: [
                            Container(
                              padding: EdgeInsets.all(1.h),
                              decoration: BoxDecoration(
                                color: AppColorData.doneBg,
                                borderRadius: BorderRadius.circular(1.h),
                              ),
                              child: SvgPicture.asset(
                                Resource.doneIcon,
                                height: 2.h,
                              ),
                            ),
                            SizedBox(
                              width: 2.3.w,
                            ),
                            Text(
                              AppConstant.classCompleted,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    color: AppColorData.primaryTxt,
                                  ),
                            ),
                          ]),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.h),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '12',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .copyWith(
                                          color: AppColorData.primaryTxt,
                                          fontWeight: FontWeight.w800,
                                        ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(1.h),
                    child: Container(
                      padding: EdgeInsets.all(2.h),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                      child: Column(
                        children: [
                          Row(children: [
                            Container(
                              padding: EdgeInsets.all(1.h),
                              decoration: BoxDecoration(
                                color: AppColorData.primaryTxt,
                                borderRadius: BorderRadius.circular(1.h),
                              ),
                              child: Icon(
                                Icons.timer,
                                color: Colors.blue,
                                size: 15.sp,
                              ),
                            ),
                            SizedBox(
                              width: 2.3.w,
                            ),
                            Text(
                              AppConstant.timeDurationTxt,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    color: AppColorData.primaryTxt,
                                  ),
                            ),
                          ]),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '1',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(color: AppColorData.primaryTxt),
                                ),
                                Text(
                                  'h',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(
                                        color: Colors.blue[100],
                                      ),
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  '46',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(color: AppColorData.primaryTxt),
                                ),
                                Text(
                                  'm',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(
                                        color: Colors.blue[100],
                                      ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
