import 'package:educora/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import '../widgets/progress_card.dart';
import 'popular_teachers_screen.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = ViewRouter.home;

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 5.h, left: 6.w, right: 6.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppConstant.welcomeBack + AppConstant.user.lastName! + "!",
              style: Theme.of(context).textTheme.headline1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 3.h),
              child: TextField(
                style: Theme.of(context).textTheme.headline6!,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.sp),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(10.sp)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10.sp)),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 10.sp),
                    child: SvgPicture.asset(
                      Resource.searchIcon,
                      height: 15.sp,
                    ),
                  ),
                  fillColor: AppColorData.homeInpFill,
                  suffixIconConstraints: BoxConstraints(maxHeight: 20.sp),
                  filled: true,
                  hintText: 'Search for new Knowledge!',
                ),
                onChanged: (value) {},
              ),
            ),
            Container(
              height: 22.h,
              width: 90.w,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 3.sp,
                    spreadRadius: 0.0,
                    offset: Offset(1.sp, 1.sp),
                  )
                ],
                color: AppColorData.homeHeaderBg,
                borderRadius: BorderRadius.circular(5.h),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(Resource.homeHeader),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppConstant.startLearning,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: AppColorData.homeHeaderTxt),
                    ),
                    Text(
                      AppConstant.newStudent,
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColorData.homeHeaderTxt,
                          ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(PopularTeachersScreen.routeName);
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.resolveWith<OutlinedBorder>(
                                  (Set<MaterialState> states) {
                            return RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.h));
                          }),
                          padding: MaterialStateProperty.resolveWith((states) =>
                              EdgeInsets.symmetric(
                                  horizontal: 2.w, vertical: 2.h)),
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.grey[200]!;
                              }
                              return AppColorData.categoriesBtn;
                            },
                          ),
                        ),
                        child: SizedBox(
                          width: 27.w,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppConstant.categories,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      color: Theme.of(context).primaryColor,
                                    ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: const Color.fromRGBO(55, 106, 237, 1),
                                size: 12.sp,
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 3.h),
              child: Text(
                AppConstant.classInProgress,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: const Color.fromRGBO(48, 95, 114, 1)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: const ProgressCard(
                name: AppConstant.xdPrototyping,
                imgPath: 'assets/images/icons/xd_icon.png',
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: const ProgressCard(
                name: AppConstant.sketch,
                imgPath: 'assets/images/icons/sketch_icon.png',
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: const ProgressCard(
                name: AppConstant.afterEffects,
                imgPath: 'assets/images/icons/ae_icon.png',
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
