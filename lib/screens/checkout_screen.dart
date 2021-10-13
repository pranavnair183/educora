import 'package:educora/screens/scanner_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:educora/utils/utils.dart';

class CheckoutScreen extends StatefulWidget {
  static String routeName = ViewRouter.checkout;
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10.h,
        leading: Builder(builder: (context) {
          return Padding(
              padding: EdgeInsets.only(top: 0.h),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 5.h,
                  color: Theme.of(context).iconTheme.color,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ));
        }),
        title: Text(
          AppConstant.checkout,
          style: Theme.of(context).textTheme.headline4!,
        ),
        centerTitle: true,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 4.w, top: 1.h),
              child: SvgPicture.asset(Resource.scannerIcon, height: 4.h))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: Row(
                children: [
                  Text(
                    AppConstant.paymentMethod,
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(fontWeight: FontWeight.w500, fontSize: 14.sp),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.h),
                      color: AppColorData.checkoutOptionBox,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.h),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 3.w, vertical: 1.h),
                            child: Row(
                              children: [
                                Radio(
                                    value: 0,
                                    groupValue: _value,
                                    onChanged: (int? value) {
                                      setState(() {
                                        _value = value!;
                                      });
                                    }),
                                SizedBox(width: 2.w),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(2.h),
                                    child: Image.asset(
                                      Resource.visaIcon,
                                      height: 5.5.h,
                                      fit: BoxFit.cover,
                                    )),
                                SizedBox(
                                  width: 6.w,
                                ),
                                Expanded(
                                    child: Text(
                                  AppConstant.bankNo,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(fontWeight: FontWeight.w400),
                                )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 3.w, vertical: 1.h),
                            child: Row(
                              children: [
                                Radio(
                                    value: 1,
                                    groupValue: _value,
                                    onChanged: (int? value) {
                                      setState(() {
                                        _value = value!;
                                      });
                                    }),
                                SizedBox(width: 2.w),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(2.h),
                                    child: Image.asset(
                                      Resource.mcIcon,
                                      height: 5.5.h,
                                      fit: BoxFit.cover,
                                    )),
                                SizedBox(
                                  width: 6.w,
                                ),
                                Expanded(
                                    child: Text(
                                  AppConstant.bankNo,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(fontWeight: FontWeight.w400),
                                )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 3.w, vertical: 1.h),
                            child: Row(
                              children: [
                                Radio(
                                    value: 2,
                                    groupValue: _value,
                                    onChanged: (int? value) {
                                      setState(() {
                                        _value = value!;
                                      });
                                    }),
                                SizedBox(width: 2.w),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(2.h),
                                    child: Image.asset(
                                      Resource.bankIcon,
                                      height: 5.5.h,
                                      fit: BoxFit.cover,
                                    )),
                                SizedBox(
                                  width: 6.w,
                                ),
                                Expanded(
                                    child: Text(
                                  AppConstant.bankNo,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(fontWeight: FontWeight.w400),
                                )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  AppConstant.total,
                  style: Theme.of(context).textTheme.headline4,
                ),
                const Spacer(),
                Text(
                  AppConstant.totalPrice,
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.h),
                              topRight: Radius.circular(4.h),
                            )),
                            builder: (context) {
                              return SizedBox(
                                height: 55.h,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 4.h,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            AppConstant.confirmAndPay,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6!
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.w600),
                                          ),
                                          const Spacer(),
                                          Text(
                                            AppConstant.products,
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption,
                                          ),
                                          Text(
                                            '3',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6!
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.w600),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      SizedBox(
                                        height: 24.h,
                                        child: Row(children: [
                                          Expanded(
                                            child: Container(
                                              height: 24.h,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(2.h),
                                                image: const DecorationImage(
                                                  image: AssetImage(
                                                    Resource.creditCard,
                                                  ),
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]),
                                      ),
                                      const Spacer(),
                                      Row(
                                        children: [
                                          Text(
                                            AppConstant.total,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline4,
                                          ),
                                          const Spacer(),
                                          Text(
                                            AppConstant.totalPrice,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline4!
                                                .copyWith(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    fontWeight:
                                                        FontWeight.w800),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: ElevatedButton(
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pushNamed(ScannerScreen
                                                          .routeName);
                                                },
                                                style: Theme.of(context)
                                                    .elevatedButtonTheme
                                                    .style!
                                                    .copyWith(
                                                        padding: MaterialStateProperty
                                                            .resolveWith((states) =>
                                                                EdgeInsets
                                                                    .symmetric(
                                                                        vertical:
                                                                            2.h))),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 3.w),
                                                  child: Text(
                                                    AppConstant.payNow,
                                                    textAlign: TextAlign.center,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline5!
                                                        .copyWith(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: AppColorData
                                                              .primaryTxt,
                                                        ),
                                                  ),
                                                )),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      style: Theme.of(context).elevatedButtonTheme.style,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: SizedBox(
                          child: Text(
                            AppConstant.next,
                            textAlign: TextAlign.center,
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: AppColorData.primaryTxt,
                                    ),
                          ),
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            )
          ],
        ),
      ),
    );
  }
}
