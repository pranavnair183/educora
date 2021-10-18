import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/course_video_tab.dart';
import '../utils/utils.dart';

class CourseDetailScreen extends StatefulWidget {
  const CourseDetailScreen({Key? key}) : super(key: key);

  @override
  _CourseDetailScreenState createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10.h,
        leadingWidth: 70.sp,
        leading: Builder(builder: (context) {
          return Padding(
              padding: EdgeInsets.only(top: 5.h),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 5.h,
                  color: Theme.of(context).iconTheme.color,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ));
        }),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 4.w, top: 5.h),
              child: SvgPicture.asset(
                Resource.searchIcon,
                height: 5.h,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Resource.profilePicCourseDetail,
                  height: 23.h,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppConstant.tomCruise,
                    style: Theme.of(context).textTheme.headline2,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.h),
                      color: AppColorData.studentBg,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5.sp),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 2.sp, top: 2.sp),
                                child: Center(
                                    child: Image.asset(
                                  Resource.studentIcon,
                                  height: 14.sp,
                                )),
                              )),
                          Text(
                            AppConstant.student,
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h, left: 2.w, right: 2.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.h),
                          color: AppColorData.flagBg,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.w, vertical: 1.5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                Resource.flagIcon,
                                height: 8.h,
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                AppConstant.eightyFivePercent,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(fontWeight: FontWeight.w700),
                              ),
                              Text(
                                AppConstant.goal,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.h),
                          color: AppColorData.boardBg,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.w, vertical: 1.5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                Resource.boardIcon,
                                height: 8.h,
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                AppConstant.thirtyTwo,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(fontWeight: FontWeight.w700),
                              ),
                              Text(
                                AppConstant.totalClass,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.h),
                          color: AppColorData.bookBg,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.w, vertical: 1.5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                Resource.bookIcon,
                                height: 8.h,
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                AppConstant.plusTen,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(fontWeight: FontWeight.w700),
                              ),
                              Text(
                                AppConstant.totalBooks,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 3.h, left: 3.5.w, right: 3.5.w),
              child: Row(
                children: [
                  Text(
                    AppConstant.course,
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  Text(
                    AppConstant.details,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.h),
                      color: AppColorData.courseTotalTimeBg,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 5.sp, vertical: 3.sp),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.access_time,
                            color: const Color.fromRGBO(55, 106, 237, 1),
                            size: 16.sp,
                          ),
                          SizedBox(width: 2.w),
                          Text(
                            AppConstant.threeHoursTwentyMin,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Theme.of(context).primaryColor),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h),
              child: const CourseVideoTab(
                title: AppConstant.introduction,
                isFirst: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h),
              child:
                  const CourseVideoTab(title: AppConstant.theLanguageOfColor),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h),
              child:
                  const CourseVideoTab(title: AppConstant.thePsychologyOfColor),
            ),
          ],
        ),
      ),
    );
  }
}
