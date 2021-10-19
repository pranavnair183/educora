import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../utils/utils.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h),
              child: Row(
                children: [
                  Text(
                    AppConstant.menu,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, ViewRouter.classBooking),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.h),
                    color: AppColorData.menuTab,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                    child: Row(
                      children: [
                        Text(
                          AppConstant.classBooking,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Theme.of(context).primaryColor),
                        ),
                        const Spacer(),
                        Icon(Icons.arrow_forward_ios,
                            size: 15.sp, color: Theme.of(context).primaryColor)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, ViewRouter.popularTeachers),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.h),
                    color: AppColorData.menuTab,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                    child: Row(
                      children: [
                        Text(
                          AppConstant.popularTeachers2,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Theme.of(context).primaryColor),
                        ),
                        const Spacer(),
                        Icon(Icons.arrow_forward_ios,
                            size: 15.sp, color: Theme.of(context).primaryColor)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, ViewRouter.teacherBooking),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.h),
                    color: AppColorData.menuTab,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                    child: Row(
                      children: [
                        Text(
                          AppConstant.teachersBooking,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Theme.of(context).primaryColor),
                        ),
                        const Spacer(),
                        Icon(Icons.arrow_forward_ios,
                            size: 15.sp, color: Theme.of(context).primaryColor)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, ViewRouter.timer),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.h),
                    color: AppColorData.menuTab,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                    child: Row(
                      children: [
                        Text(
                          AppConstant.timer,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Theme.of(context).primaryColor),
                        ),
                        const Spacer(),
                        Icon(Icons.arrow_forward_ios,
                            size: 15.sp, color: Theme.of(context).primaryColor)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, ViewRouter.videoChat),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.h),
                    color: AppColorData.menuTab,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                    child: Row(
                      children: [
                        Text(
                          AppConstant.talkToExperts,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Theme.of(context).primaryColor),
                        ),
                        const Spacer(),
                        Icon(Icons.arrow_forward_ios,
                            size: 15.sp, color: Theme.of(context).primaryColor)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, ViewRouter.myActivity),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.h),
                    color: AppColorData.menuTab,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                    child: Row(
                      children: [
                        Text(
                          AppConstant.myActivity,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Theme.of(context).primaryColor),
                        ),
                        const Spacer(),
                        Icon(Icons.arrow_forward_ios,
                            size: 15.sp, color: Theme.of(context).primaryColor)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, ViewRouter.loginSignin),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.h),
                      color: Colors.red[50]),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                    child: Row(
                      children: [
                        Text(
                          AppConstant.logout,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.red),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15.sp,
                          color: Colors.red,
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
    );
  }
}
