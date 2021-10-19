import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:educora/utils/utils.dart';
import '../widgets/dashed_painter.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({Key? key}) : super(key: key);

  @override
  _TrackOrderScreenState createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
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
          AppConstant.trackingOrder,
          style: Theme.of(context).textTheme.headline4!,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          children: [
            SizedBox(height: 1.h),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.h),
                      color: Colors.blue[50],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 3.w, vertical: 2.5.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppConstant.estimatedDeliveryTime,
                            style:
                                Theme.of(context).textTheme.headline6!.copyWith(
                                      color: AppColorData.secodaryText,
                                      fontWeight: FontWeight.w700,
                                    ),
                          ),
                          SizedBox(height: 1.h),
                          Text(
                            AppConstant.fourToSixDays,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          SizedBox(height: 1.h),
                          Padding(
                            padding: EdgeInsets.only(left: 1.w),
                            child: Container(
                              padding: EdgeInsets.all(3.sp),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.sp),
                                  color: Theme.of(context).primaryColor),
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 1.w, vertical: 0.5.h),
                                  child: Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.timer_rounded,
                                        color: AppColorData.secondaryIcon,
                                        size: 15.sp,
                                      ),
                                      SizedBox(width: 2.w),
                                      Text(
                                        AppConstant.deliveryDate,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6!
                                            .copyWith(
                                              color: AppColorData.primaryTxt,
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.w, top: 3.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(children: [
                    Text(
                      AppConstant.whereIsMyOrder,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ]),
                  SizedBox(height: 2.h),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.h),
                              color: Theme.of(context).primaryColor,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(1.4.h),
                              child: SvgPicture.asset(
                                Resource.truckIcon,
                                height: 3.5.h,
                              ),
                            ),
                          ),
                          SizedBox(width: 2.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppConstant.onTheWay,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(fontWeight: FontWeight.w700),
                              ),
                              SizedBox(height: 1.7.h),
                              Text(
                                AppConstant.arrivingBy,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      color: AppColorData.secodaryText,
                                    ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 3.5.h),
                          CustomPaint(
                            size: Size(1, 5.h),
                            painter: DashedLineVerticalPainter(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.h),
                              color: AppColorData.dispatchedBg,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(1.4.h),
                              child: SvgPicture.asset(
                                Resource.dispatchedIcon,
                                height: 3.5.h,
                              ),
                            ),
                          ),
                          SizedBox(width: 2.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppConstant.dispatched,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey[700]),
                              ),
                              SizedBox(height: 1.7.h),
                              Text(
                                AppConstant.dispatchedDate,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(color: AppColorData.secodaryText),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 3.5.h),
                          CustomPaint(
                            size: Size(1, 5.h),
                            painter: DashedLineVerticalPainter(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.h),
                              color: AppColorData.orderPlacedBg,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(1.4.h),
                              child: SvgPicture.asset(
                                Resource.orderPlacedIcon,
                                height: 3.5.h,
                              ),
                            ),
                          ),
                          SizedBox(width: 2.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppConstant.orderPlacedSuccessfully,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey[700]),
                              ),
                              SizedBox(height: 1.7.h),
                              Text(
                                AppConstant.orderPlacedDate,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      color: AppColorData.secodaryText,
                                    ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, ViewRouter.home),
                      style: Theme.of(context)
                          .elevatedButtonTheme
                          .style!
                          .copyWith(
                              padding: MaterialStateProperty.resolveWith(
                                  (states) =>
                                      EdgeInsets.symmetric(vertical: 2.h))),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: Text(
                          AppConstant.backToHome,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: AppColorData.primaryTxt),
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(height: 2.h),
          ],
        ),
      ),
    );
  }
}
