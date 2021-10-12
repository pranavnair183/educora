import 'package:educora/screens/onboarding12.dart';
import 'package:educora/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  static String routeName = ViewRouter.onBoarding;
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);
    return PageView(
      controller: controller,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Ob1(
          imgPath: Resource.ob1,
          buttonTxt: AppConstant.next,
          title: AppConstant.learnOnlineFromYourHome,
          changePage: controller,
          isLast: false,
        ),
        Ob1(
          imgPath: Resource.ob2,
          buttonTxt: AppConstant.getStarted,
          title: AppConstant.theBestPlatformForOnlineLearning,
          changePage: controller,
          isLast: false,
        ),
        Ob1(
          imgPath: Resource.ob3,
          buttonTxt: AppConstant.getStarted,
          title: AppConstant.theBestPlatformForOnlineLearning,
          changePage: controller,
          isLast: true,
        )
      ],
    );
  }
}
