import 'package:educora/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressCard extends StatefulWidget {
  const ProgressCard({
    Key? key,
    required this.name,
    required this.imgPath,
  }) : super(key: key);

  final String name;
  final String imgPath;

  @override
  _ProgressCardState createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(ViewRouter.courseDetail),
      child: Container(
        decoration: BoxDecoration(
            color: AppColorData.progressCardBg,
            borderRadius: BorderRadius.circular(2.5.h)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
          child: Row(
            children: [
              Image.asset(
                widget.imgPath,
                height: 9.h,
              ),
              SizedBox(width: 4.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: AppColorData.progressCardTxt,
                        ),
                  ),
                  SizedBox(height: 1.2.h),
                  Text(
                    AppConstant.tenHoursNineteenLessons,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.red[400]),
                  )
                ],
              ),
              const Spacer(),
              Text(
                AppConstant.twentyFivePercent,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: AppColorData.progressCardTxt,
                    ),
              ),
              SizedBox(width: 3.w),
              ClipRRect(
                borderRadius: BorderRadius.circular(35.sp),
                child: CircularPercentIndicator(
                  animation: true,
                  animationDuration: 2000,
                  restartAnimation: true,
                  radius: 35.sp,
                  center: Icon(
                    Icons.play_arrow,
                    color: Theme.of(context).primaryColor,
                    size: 20.sp,
                  ),
                  backgroundColor: Colors.white,
                  fillColor: Colors.white,
                  progressColor: Theme.of(context).primaryColor,
                  percent: 0.25,
                  lineWidth: 1.sp,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
