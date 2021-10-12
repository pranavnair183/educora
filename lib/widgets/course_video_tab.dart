import 'package:educora/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CourseVideoTab extends StatelessWidget {
  final String? title;
  final bool? isFirst;
  const CourseVideoTab({Key? key, this.title, this.isFirst = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 30.sp,
            height: 30.sp,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.h),
                color: (isFirst!)
                    ? Theme.of(context).primaryColor
                    : Colors.blue[100]),
            child: Center(
              child: Icon(
                Icons.play_arrow_rounded,
                color: (isFirst!)
                    ? AppColorData.secondaryIcon
                    : Theme.of(context).primaryColor,
                size: 25.sp,
              ),
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title!,
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.w700)),
              SizedBox(
                height: 1.h,
              ),
              Text(
                AppConstant.random2,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.w300),
              )
            ],
          )
        ],
      ),
    );
  }
}
