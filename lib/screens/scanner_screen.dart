import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:educora/utils/utils.dart';
import 'dart:ui';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({Key? key}) : super(key: key);

  @override
  _ScannerScreenState createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  bool isSuccess = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        shape: Border.all(color: Theme.of(context).primaryColor, width: 0),
        backgroundColor: Theme.of(context).primaryColor,
        toolbarHeight: 10.h,
        leading: Builder(
          builder: (context) {
            return Padding(
              padding: EdgeInsets.only(top: 0.h),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 5.h,
                  color: AppColorData.secondaryIcon,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            );
          },
        ),
        title: Text(
          AppConstant.scanCard,
          style: Theme.of(context).textTheme.headline4!.copyWith(
                color: AppColorData.primaryTxt,
              ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            height: 65.h,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(6.h),
                  bottomRight: Radius.circular(6.h)),
            ),
            child: Center(
                child: Stack(
              children: [
                Positioned(
                  left: 5.w,
                  top: 1.h,
                  child: Image.asset(
                    Resource.scanCard,
                    height: 40.h,
                    width: 77.w,
                  ),
                ),
                Image.asset(
                  Resource.scanFrame,
                  height: 43.h,
                  width: 87.w,
                ),
              ],
            )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => showModalBottomSheet(
                        context: context,
                        barrierColor: AppColorData.barrierBg,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.h),
                          topRight: Radius.circular(4.h),
                        )),
                        builder: (context) {
                          return StatefulBuilder(
                            builder: (ctx, setModalState) {
                              return SizedBox(
                                height: 43.h,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 6.w),
                                  child: (isLoading == true)
                                      ? const Center(
                                          child: CircularProgressIndicator(),
                                        )
                                      : Column(
                                          children: [
                                            const Spacer(),
                                            CircleAvatar(
                                              backgroundColor: (isSuccess ==
                                                      true)
                                                  ? AppColorData.scannerDoneBg3
                                                  : Colors.red,
                                              child: SvgPicture.asset(
                                                (isSuccess == true)
                                                    ? Resource.doneIcon
                                                    : Resource.failedIcon,
                                                height: 3.h,
                                              ),
                                              radius: 4.h,
                                            ),
                                            SizedBox(height: 2.h),
                                            Text(
                                              (isSuccess == true)
                                                  ? AppConstant.scanSuccess
                                                  : AppConstant.scanFailed,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline3,
                                            ),
                                            SizedBox(height: 2.h),
                                            Text(
                                              (isSuccess == true)
                                                  ? AppConstant
                                                      .yourCreditCardIsSuccessFullyScanned
                                                  : AppConstant
                                                      .yourCreditCardScanFailed,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption!
                                                  .copyWith(fontSize: 14.sp),
                                              textAlign: TextAlign.center,
                                            ),
                                            const Spacer(),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 1.5.h),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: ElevatedButton(
                                                        onPressed:
                                                            (isSuccess == false)
                                                                ? () {
                                                                    setModalState(
                                                                        () {
                                                                      isLoading =
                                                                          true;
                                                                    });
                                                                    Future.delayed(
                                                                        const Duration(
                                                                            seconds:
                                                                                3),
                                                                        () {
                                                                      setModalState(
                                                                          () {
                                                                        isSuccess =
                                                                            true;
                                                                        isLoading =
                                                                            false;
                                                                      });
                                                                    });
                                                                  }
                                                                : () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .pushNamed(
                                                                            ViewRouter.paymentSuccess);
                                                                  },
                                                        style: Theme.of(context)
                                                            .elevatedButtonTheme
                                                            .style!
                                                            .copyWith(
                                                              padding:
                                                                  MaterialStateProperty
                                                                      .resolveWith(
                                                                (states) =>
                                                                    EdgeInsets
                                                                        .symmetric(
                                                                  vertical: 2.h,
                                                                ),
                                                              ),
                                                            ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      3.w),
                                                          child: Text(
                                                            (isSuccess == true)
                                                                ? AppConstant
                                                                    .next
                                                                : AppConstant
                                                                    .tryAgain,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .headline5!
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700),
                                                          ),
                                                        )),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      style: Theme.of(context)
                          .elevatedButtonTheme
                          .style!
                          .copyWith(
                              padding: MaterialStateProperty.resolveWith(
                                  (states) =>
                                      EdgeInsets.symmetric(vertical: 2.h))),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: Text(
                          AppConstant.scanNow,
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    color: AppColorData.primaryTxt,
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
