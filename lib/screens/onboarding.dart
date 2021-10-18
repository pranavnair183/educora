import 'package:educora/screens/onboarding12.dart';
import 'package:educora/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
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
      children: List.generate(
        3,
        (index) => Ob1(
          imgPath: AppConstant.onBoarding[index]['imgPath'],
          buttonTxt: AppConstant.onBoarding[index]['buttonTxt'],
          title: AppConstant.onBoarding[index]['title'],
          isLast: AppConstant.onBoarding[index]['isLast'],
          changePage: controller,
        ),
      ),
    );
  }
}
