import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import "../utils/utils.dart";

class Ob1 extends StatefulWidget {
  const Ob1({
    Key? key,
    required this.changePage,
    required this.imgPath,
    required this.title,
    required this.buttonTxt,
    required this.isLast,
  }) : super(key: key);

  final PageController changePage;
  final String imgPath;
  final String title;
  final String buttonTxt;
  final bool isLast;

  @override
  _Ob1State createState() => _Ob1State();
}

class _Ob1State extends State<Ob1> {
  Widget _buildImage(String assetName, double width, double height) {
    return Image.asset(
      assetName,
      width: width,
      height: height,
      fit: BoxFit.fill,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorData.onboardingBg,
      body: Column(
        children: [
          Container(
              height: 50.h,
              width: 100.w,
              padding: EdgeInsets.only(
                  bottom: (widget.isLast == false) ? 3.h : 0,
                  left: 3.w,
                  right: 3.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5.h),
                  bottomLeft: Radius.circular(5.h),
                ),
              ),
              child: _buildImage(widget.imgPath, 80.w, 100.h)),
          if (widget.isLast == false)
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 4.h),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.title,
                          style:
                              Theme.of(context).textTheme.headline2!.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: AppColorData.onboardingTxt,
                                  ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.h),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          AppConstant.random,
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.headline6!.copyWith(
                                    color: AppColorData.onboardingTxt,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.h, left: 28.w, right: 28.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.h),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue[300]!,
                                offset: Offset(1.5.h, 3.h),
                                blurRadius: 30.sp,
                                spreadRadius: 0.sp,
                              ),
                            ]),
                        child: ElevatedButton(
                            onPressed: () {
                              if (widget.buttonTxt == 'Get Started') {
                                widget.changePage.jumpToPage(2);
                              } else {
                                widget.changePage.jumpToPage(1);
                              }
                            },
                            style: Theme.of(context)
                                .elevatedButtonTheme
                                .style!
                                .copyWith(
                              shape: MaterialStateProperty.resolveWith<
                                  OutlinedBorder>(
                                (Set<MaterialState> states) {
                                  return RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.h));
                                },
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.w),
                              child: SizedBox(
                                width: 38.w,
                                height: 3.8.h,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      widget.buttonTxt,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(
                                            color: AppColorData.primaryTxt,
                                            fontWeight: FontWeight.w400,
                                          ),
                                    ),
                                    Container(
                                      height: 6.h,
                                      width: 11.w,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(5.h),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.keyboard_arrow_right_sharp,
                                          color: Theme.of(context).primaryColor,
                                          size: 15.sp,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          if (widget.isLast == true)
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.h, left: 5.w),
                  child: Row(
                    children: [
                      Text(AppConstant.welcomeToEducora,
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.headline1),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.h, left: 5.w),
                  child: Row(
                    children: [
                      Text(
                        AppConstant.loginAsA,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.h, left: 5.w, right: 5.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                                onPressed: () => Navigator.of(context)
                                    .pushNamed('/login_signin'),
                                style:
                                    Theme.of(context).elevatedButtonTheme.style,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 3.w),
                                  child: SizedBox(
                                    width: 70.w,
                                    child: Text(
                                      AppConstant.student,
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(
                                              color: AppColorData.primaryTxt,
                                              fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                )),
                          )
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () => Navigator.of(context)
                                  .pushNamed('/login_signin'),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.resolveWith<
                                    OutlinedBorder>(
                                  (Set<MaterialState> states) {
                                    return RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(1.h),
                                      side: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width: 2.sp,
                                      ),
                                    );
                                  },
                                ),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return Colors.grey[200]!;
                                    }
                                    return Colors.white;
                                  },
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3.w),
                                child: Text(
                                  AppConstant.teacher,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}
