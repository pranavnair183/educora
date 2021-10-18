import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:educora/utils/utils.dart';

class VideoChatScreen extends StatefulWidget {
  const VideoChatScreen({Key? key}) : super(key: key);

  @override
  _VideoChatScreenState createState() => _VideoChatScreenState();
}

class _VideoChatScreenState extends State<VideoChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.all(1.h),
            child: SvgPicture.asset(
              Resource.endCallIcon,
              height: 2.h,
            ),
          ),
        ),
        body: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                Resource.girl2,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 12.w,
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Icon(
                        Icons.arrow_back,
                        size: 15.sp,
                        color: AppColorData.secondaryIcon,
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1.h)),
                          primary: AppColorData.iconButtonBg,
                          onPrimary: AppColorData.iconButtonBg,
                          shadowColor: Colors.white70,
                          elevation: 5,
                          padding: EdgeInsets.symmetric(vertical: 2.h)),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.all(1.h),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(1.h),
                    ),
                    child: Text(
                      AppConstant.videoChatDuration,
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: AppColorData.primaryTxt,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  const Spacer(),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.5.h),
                        child: Container(
                          height: 21.h,
                          width: 25.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.h),
                            image: const DecorationImage(
                              image: AssetImage(Resource.girl1),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 5.w),
                              ElevatedButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.flip_camera_ios_rounded,
                                  size: 14.sp,
                                  color: Theme.of(context).primaryColor,
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  primary: Colors.white,
                                  onPrimary: Colors.white,
                                  shadowColor: Colors.white,
                                  elevation: 5,
                                  padding: EdgeInsets.all(2.h),
                                ),
                              ),
                            ]),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(2.h),
            topRight: Radius.circular(2.h),
          ),
          child: SizedBox(
            height: 9.h,
            child: BottomAppBar(
              color: Theme.of(context).primaryColor,
              elevation: 10,
              shape: const CircularNotchedRectangle(),
              notchMargin: 4.sp,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: MaterialButton(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () =>
                            Navigator.of(context).pushNamed(ViewRouter.home),
                        child: Column(children: [
                          SvgPicture.asset(
                            Resource.homeIconVcBab,
                            height: 4.h,
                          ),
                          SizedBox(height: 1.h),
                          Text(
                            AppConstant.home,
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: AppColorData.primaryTxt,
                                      fontWeight: FontWeight.w500,
                                    ),
                          )
                        ]),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () =>
                            Navigator.of(context).pushNamed(ViewRouter.menu),
                        child: Column(children: [
                          SvgPicture.asset(
                            Resource.menuIconVcBab,
                            height: 4.h,
                          ),
                          SizedBox(height: 1.h),
                          Text(
                            AppConstant.menu,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                                    color: AppColorData.primaryTxt,
                                    fontWeight: FontWeight.w500),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
