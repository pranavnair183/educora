import 'package:educora/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 6.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Resource.profileIcon,
                    height: 35.sp,
                  ),
                  SizedBox(width: 3.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppConstant.user.firstName +
                            " " +
                            AppConstant.user.lastName,
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: AppColorData.primaryTxt,
                            ),
                      ),
                      SizedBox(height: 1.sp),
                      Text(
                        AppConstant.user.type,
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: AppColorData.primaryTxt,
                            ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15.h),
            InkWell(
              onTap: () =>
                  Navigator.of(context).pushNamed(ViewRouter.myActivity),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Resource.dHomeIcon,
                    height: 22.sp,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    AppConstant.home,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: AppColorData.primaryTxt,
                        ),
                  )
                ],
              ),
            ),
            SizedBox(height: 4.h),
            InkWell(
              onTap: () =>
                  Navigator.of(context).pushNamed(ViewRouter.teacherBooking),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Resource.dVideosIcon,
                    height: 22.sp,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    AppConstant.videos,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: AppColorData.primaryTxt,
                        ),
                  )
                ],
              ),
            ),
            SizedBox(height: 4.h),
            InkWell(
              onTap: () =>
                  Navigator.of(context).pushNamed(ViewRouter.classBooking),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Resource.dMsgIcon,
                    height: 22.sp,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    AppConstant.messages,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: AppColorData.primaryTxt,
                        ),
                  )
                ],
              ),
            ),
            SizedBox(height: 4.h),
            InkWell(
              onTap: () => Navigator.of(context).pushNamed(ViewRouter.courses),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Resource.dCoursesIcon,
                    height: 22.sp,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    AppConstant.courses,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: AppColorData.primaryTxt,
                        ),
                  )
                ],
              ),
            ),
            SizedBox(height: 4.h),
            InkWell(
              onTap: () => Navigator.of(context).pushNamed(ViewRouter.timer),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Resource.dEbookIcon,
                    height: 22.sp,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    AppConstant.ebook,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: AppColorData.primaryTxt,
                        ),
                  )
                ],
              ),
            ),
            SizedBox(height: 4.h),
            InkWell(
              onTap: () =>
                  Navigator.of(context).pushNamed(ViewRouter.videoChat),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Resource.dSettingsIcon,
                    height: 22.sp,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    AppConstant.settings,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: AppColorData.primaryTxt,
                        ),
                  )
                ],
              ),
            ),
            SizedBox(height: 4.h),
            Row(
              children: [
                SvgPicture.asset(
                  Resource.dLogoutIcon,
                  height: 22.sp,
                ),
                SizedBox(width: 5.w),
                Text(
                  AppConstant.logout,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: AppColorData.primaryTxt,
                      ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
