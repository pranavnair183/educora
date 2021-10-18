import 'package:educora/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CoursesAppBar extends SliverPersistentHeaderDelegate {
  CoursesAppBar({required this.expandedHeight});

  final double expandedHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(fit: StackFit.expand, children: [
      Container(
        color: AppColorData.coursesHeaderBg,
        height: double.infinity,
        width: double.infinity,
      ),
      Positioned(
        top: 0 - shrinkOffset,
        child: Column(
          children: [
            SizedBox(height: 5.h),
            Opacity(
              opacity: 1 - shrinkOffset / expandedHeight,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        AppConstant.online,
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                              color: AppColorData.primaryTxt,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Text(
                        AppConstant.courses,
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                            color: Colors.yellow, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Image.asset(
                    Resource.courseHeader,
                    height: 25.h,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Padding(
              padding: EdgeInsets.only(top: 1.5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 4.h,
                      color: AppColorData.secondaryIcon,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  Expanded(
                    child: Text(
                      AppConstant.courses,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: AppColorData.primaryTxt,
                          ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.bookmark_border_outlined,
                      size: 4.h,
                      color: AppColorData.secondaryIcon,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          )),
    ]);
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 2.h;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
