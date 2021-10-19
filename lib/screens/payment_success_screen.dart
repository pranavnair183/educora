import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:educora/utils/utils.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PaymentSuccessScreen extends StatefulWidget {
  const PaymentSuccessScreen({Key? key}) : super(key: key);

  @override
  _PaymentSuccessScreenState createState() => _PaymentSuccessScreenState();
}

class _PaymentSuccessScreenState extends State<PaymentSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10.h,
        leading: Builder(
          builder: (context) {
            return Padding(
              padding: EdgeInsets.only(top: 0.h),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 5.h,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            );
          },
        ),
        title: Text(
          AppConstant.payment,
          style: Theme.of(context).textTheme.headline4!,
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        const Spacer(),
        Row(children: [
          Expanded(
            child: SizedBox(
              height: 30.h,
              child: CircularPercentIndicator(
                radius: 30.h,
                percent: 0.55,
                lineWidth: 3.w,
                progressColor: Theme.of(context).primaryColor,
                animation: true,
                animationDuration: 1200,
                backgroundColor: Colors.transparent,
                center: CircularPercentIndicator(
                  radius: 25.h,
                  percent: 0.85,
                  lineWidth: 3.w,
                  progressColor: AppColorData.paymentSuccessPb1,
                  animation: true,
                  animationDuration: 1200,
                  backgroundColor: Colors.transparent,
                  center: CircleAvatar(
                    backgroundColor: AppColorData.paymentSuccessDoneBg1,
                    radius: 9.h,
                    child: CircleAvatar(
                        backgroundColor: AppColorData.paymentSuccessDoneBg2,
                        radius: 4.h,
                        child: SvgPicture.asset(
                          Resource.doneIcon,
                          height: 3.h,
                        )),
                  ),
                ),
              ),
            ),
          ),
        ]),
        SizedBox(height: 6.h),
        Text(
          AppConstant.paymentSuccess,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 2.h),
        Text(
          AppConstant.yourCreditCardIsSuccessFullyScanned,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: AppColorData.secodaryText,
                fontWeight: FontWeight.w700,
              ),
        ),
        const Spacer(),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.w),
                child: ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, ViewRouter.trackOrder),
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
                        AppConstant.trackOrder,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: AppColorData.primaryTxt,
                            fontWeight: FontWeight.w700),
                      ),
                    )),
              ),
            ),
          ],
        ),
        SizedBox(height: 2.h),
      ]),
    );
  }
}
