import 'dart:ui';

import 'package:educora/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class LoginSigninScreen extends StatefulWidget {
  static String routeName = ViewRouter.loginSignin;
  const LoginSigninScreen({Key? key}) : super(key: key);

  @override
  _LoginSigninScreenState createState() => _LoginSigninScreenState();
}

class _LoginSigninScreenState extends State<LoginSigninScreen> {
  bool _obscureText = true;
  bool _isLogin = true;
  bool _isVerification = false;
  TextEditingController? lEmail = TextEditingController();
  TextEditingController? lPwd = TextEditingController();
  TextEditingController? sEmail = TextEditingController();
  TextEditingController? sPwd = TextEditingController();
  TextEditingController? sName = TextEditingController();

  @override
  void dispose() {
    lEmail!.dispose();
    lPwd!.dispose();
    sEmail!.dispose();
    sName!.dispose();
    sPwd!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorData.loginSignupBg,
      body: Stack(
        children: [
          Container(
            height: 30.h,
            color: AppColorData.loginHeaderBg,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        Resource.loginbubbles,
                        height: 70.h,
                      )),
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        Resource.loginLogo,
                        height: 7.h,
                      ))
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 70.h,
              width: 100.w,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(3.5.h),
                      topRight: Radius.circular(3.5.h))),
              child: Padding(
                padding: EdgeInsets.only(top: 2.5.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {
                            _isLogin = true;
                          });
                          sEmail!.clear();
                          sPwd!.clear();
                          sName!.clear();
                        },
                        child: Text(
                          AppConstant.login,
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    color: (_isLogin)
                                        ? AppColorData.loginSignupTxtActive
                                        : AppColorData.loginSignupTxtInactive,
                                  ),
                        )),
                    InkWell(
                        onTap: () {
                          setState(() {
                            _isLogin = false;
                          });
                          lEmail!.clear();
                          lPwd!.clear();
                        },
                        child: Text(
                          AppConstant.signUp,
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    color: (_isLogin)
                                        ? AppColorData.loginSignupTxtInactive
                                        : AppColorData.loginSignupTxtActive,
                                  ),
                        )),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 62.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: AppColorData.loginSheet,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(3.5.h),
                  topRight: Radius.circular(3.5.h),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: (_isVerification == true)
                    ? Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  AppConstant.verificationCode,
                                  style: Theme.of(context).textTheme.headline4!,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 1.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  AppConstant.enterTheFourDigit,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(
                                        color: AppColorData.secodaryText,
                                      ),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          PinCodeTextField(
                            animationType: AnimationType.none,
                            showCursor: false,
                            appContext: context,
                            length: 4,
                            onChanged: (value) {},
                            textStyle: Theme.of(context).textTheme.headline5!,
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(1.h),
                              fieldHeight: 50.sp,
                              inactiveColor: Theme.of(context).primaryColor,
                              activeColor: Theme.of(context).primaryColor,
                              fieldWidth: 40.sp,
                              activeFillColor: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/');
                              },
                              style:
                                  Theme.of(context).elevatedButtonTheme.style,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3.w),
                                child: SizedBox(
                                  width: 70.w,
                                  child: Text(
                                    AppConstant.verifyPin,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                          fontWeight: FontWeight.w700,
                                          color: AppColorData.primaryTxt,
                                        ),
                                  ),
                                ),
                              )),
                        ],
                      )
                    : (_isLogin == true)
                        ? Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 3.h),
                                child: TextField(
                                  controller: lEmail,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(fontWeight: FontWeight.w400),
                                  decoration: InputDecoration(
                                    border: const UnderlineInputBorder(),
                                    labelText: AppConstant.email,
                                    labelStyle: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: AppColorData.textBlack,
                                        ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 3.h),
                                child: TextField(
                                  controller: lPwd,
                                  keyboardType: TextInputType.visiblePassword,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(fontWeight: FontWeight.w400),
                                  obscureText: _obscureText,
                                  decoration: InputDecoration(
                                    suffix: InkWell(
                                        onTap: () {
                                          setState(() {
                                            _obscureText = !_obscureText;
                                          });
                                        },
                                        child: Text(
                                          (_obscureText == true)
                                              ? AppConstant.show
                                              : AppConstant.hide,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6!
                                              .copyWith(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  fontWeight: FontWeight.w500),
                                        )),
                                    border: const UnderlineInputBorder(),
                                    labelText: AppConstant.password,
                                    labelStyle: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                          color: AppColorData.textBlack,
                                        ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 2.5.h),
                                child: Row(
                                  children: [
                                    Text(
                                      AppConstant.forgotPassword,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _isVerification = true;
                                    });
                                  },
                                  style: Theme.of(context)
                                      .elevatedButtonTheme
                                      .style,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 3.w),
                                    child: SizedBox(
                                      width: 70.w,
                                      child: Text(
                                        AppConstant.loginSmall,
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                              fontWeight: FontWeight.w700,
                                              color: AppColorData.primaryTxt,
                                            ),
                                      ),
                                    ),
                                  )),
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _isLogin = false;
                                      });
                                    },
                                    child: Text(
                                      AppConstant.createAccount,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        : Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 2.h),
                                child: TextField(
                                  controller: sName,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(fontWeight: FontWeight.w400),
                                  decoration: InputDecoration(
                                    border: const UnderlineInputBorder(),
                                    labelText: 'Name',
                                    labelStyle: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: AppColorData.textBlack,
                                        ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 2.h),
                                child: TextField(
                                  controller: sEmail,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(fontWeight: FontWeight.w400),
                                  decoration: InputDecoration(
                                    border: const UnderlineInputBorder(),
                                    labelText: 'Email',
                                    labelStyle: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: AppColorData.textBlack,
                                        ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 2.h),
                                child: TextField(
                                  controller: sPwd,
                                  keyboardType: TextInputType.visiblePassword,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: AppColorData.textBlack,
                                      ),
                                  obscureText: _obscureText,
                                  decoration: InputDecoration(
                                    suffix: InkWell(
                                        onTap: () {
                                          setState(() {
                                            _obscureText = !_obscureText;
                                          });
                                        },
                                        child: Text(
                                          (_obscureText == true)
                                              ? AppConstant.show
                                              : AppConstant.hide,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6!
                                              .copyWith(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                        )),
                                    border: const UnderlineInputBorder(),
                                    labelText: 'Password',
                                    labelStyle: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: AppColorData.textBlack,
                                        ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _isVerification = true;
                                    });
                                  },
                                  style: Theme.of(context)
                                      .elevatedButtonTheme
                                      .style,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 3.w),
                                    child: SizedBox(
                                      width: 70.w,
                                      child: Text(
                                        AppConstant.signUpSmall,
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                              fontWeight: FontWeight.w700,
                                              color: AppColorData.primaryTxt,
                                            ),
                                      ),
                                    ),
                                  )),
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _isLogin = true;
                                      });
                                    },
                                    child: Text(
                                      AppConstant.alreadyHavingAccountLogin,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
