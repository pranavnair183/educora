import 'package:educora/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sizer/sizer.dart';
import '../widgets/ts_tab.dart';
import 'dart:async';

String formatTime(int milliseconds) {
  var secs = milliseconds ~/ 1000;
  var hours = (secs ~/ 3600).toString().padLeft(2, '0');
  var minutes = ((secs % 3600) ~/ 60).toString().padLeft(2, '0');
  var seconds = (secs % 60).toString().padLeft(2, '0');
  return "$hours:$minutes:$seconds";
}

class TimerScreen extends StatefulWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  late Stopwatch _stopwatch;
  late Timer _timer;

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(milliseconds: 1), (timer) {
      setState(() {});
    });
    super.initState();
    _stopwatch = Stopwatch();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void handleStartStop() {
    if (_stopwatch.isRunning) {
      _stopwatch.stop();
    } else {
      _stopwatch.start();
    }
    setState(() {}); // re-render the page
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
                icon: Icon(
                  Icons.arrow_back,
                  size: 5.h,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ));
        }),
        title: Text(
          AppConstant.timer,
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
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              children: [
                SizedBox(height: 2.h),
                Row(
                  children: [
                    Text(
                      AppConstant.time,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_horiz_rounded,
                          size: 18.sp,
                          color: Colors.grey,
                        ))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.h),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 100.sp,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.sp),
                              color: Theme.of(context).primaryColor),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.w, vertical: 1.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      formatTime(
                                          _stopwatch.elapsedMilliseconds),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1!
                                          .copyWith(
                                              color: AppColorData.primaryTxt),
                                    ),
                                    const Spacer(),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: AppColorData.secondaryIcon,
                                      size: 15.sp,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.play_arrow_rounded,
                                      size: 20.sp,
                                      color: AppColorData.secondaryIcon,
                                    ),
                                    Text(
                                      AppConstant.runningClass,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(
                                            color: AppColorData.primaryTxt,
                                          ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      AppConstant.today,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    const Spacer(),
                    Text(
                      AppConstant.seeAll,
                      style: Theme.of(context).textTheme.headline6!,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  child: TsTab(
                    name: AppConstant.xdPrototyping,
                    imgPath: Resource.xdIcon,
                    badgeList: AppConstant.badgeList1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  child: TsTab(
                    name: AppConstant.sketch,
                    imgPath: Resource.sketchIcon,
                    badgeList: AppConstant.badgeList2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  child: TsTab(
                    name: AppConstant.afterEffects,
                    imgPath: Resource.aeIcon,
                    badgeList: AppConstant.badgeList3,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  child: TsTab(
                    name: AppConstant.figma,
                    imgPath: Resource.figmaIcon,
                    badgeList: AppConstant.badgeList4,
                  ),
                ),
                SizedBox(height: 10.h)
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
            child: ElevatedButton(
                onPressed: handleStartStop,
                style: Theme.of(context).elevatedButtonTheme.style,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: SizedBox(
                    width: 100.w,
                    child: Text(
                      _stopwatch.isRunning
                          ? AppConstant.stop
                          : AppConstant.start,
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
