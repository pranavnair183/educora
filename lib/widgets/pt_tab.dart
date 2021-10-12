import 'package:educora/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PtTab extends StatelessWidget {
  final String? title;
  final String? imgPath;
  final String? years;
  final bool? isFirst;
  const PtTab({
    Key? key,
    this.title,
    this.imgPath,
    this.years,
    this.isFirst = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: (isFirst!)
          ? BoxDecoration(borderRadius: BorderRadius.circular(2.h), boxShadow: [
              BoxShadow(
                color: Colors.blue[100]!,
                offset: Offset(3.h, 3.h),
                blurRadius: 30.sp,
                spreadRadius: 0.sp,
              ),
            ])
          : null,
      child: Container(
        height: 80.sp,
        decoration: BoxDecoration(
          color: (isFirst!) ? Theme.of(context).primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(2.h),
          border: Border.all(
            color:
                (isFirst!) ? Colors.transparent : AppColorData.progressCardBg,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          child: Row(
            children: [
              Image.asset(
                imgPath!,
                height: 70.sp,
              ),
              SizedBox(
                width: 3.w,
              ),
              Text(title!,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      color:
                          (isFirst!) ? AppColorData.primaryTxt : Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp)),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  color:
                      (isFirst!) ? Colors.white : AppColorData.progressCardBg,
                  borderRadius: BorderRadius.circular(2.h),
                ),
                height: 70.sp,
                width: 70.sp,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        years!,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Text(
                        AppConstant.years,
                        style: Theme.of(context).textTheme.headline6!,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
