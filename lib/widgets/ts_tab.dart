import 'package:educora/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TsTab extends StatefulWidget {
  const TsTab({
    Key? key,
    this.name,
    this.imgPath,
    this.badgeList,
  }) : super(key: key);

  final List<dynamic>? badgeList;
  final String? name;
  final String? imgPath;

  @override
  _TsTabState createState() => _TsTabState();
}

class _TsTabState extends State<TsTab> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, ViewRouter.courseDetail),
      child: Container(
        decoration: BoxDecoration(
            color: AppColorData.progressCardBg,
            borderRadius: BorderRadius.circular(2.5.h)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
          child: Row(
            children: [
              Image.asset(
                widget.imgPath!,
                height: 5.h,
              ),
              SizedBox(width: 4.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name!,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: AppColorData.progressCardTxt),
                  ),
                  SizedBox(height: 1.2.h),
                  Row(
                      children: List.generate(
                    widget.badgeList!.length,
                    (index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.sp),
                      child: Container(
                        padding: EdgeInsets.all(3.sp),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.sp),
                            color: widget.badgeList![index]['bgColor']),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.sp),
                          child: Text(widget.badgeList![index]['title'],
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: widget.badgeList![index]
                                          ['txtColor'])),
                        ),
                      ),
                    ),
                  ))
                ],
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    AppConstant.timeDuration,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.black12),
                  ),
                  SizedBox(height: 2.sp),
                  Icon(
                    Icons.play_arrow_rounded,
                    size: 25.sp,
                    color: Colors.black12,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
