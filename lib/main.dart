import 'package:educora/screens/book_detail.dart';
import 'package:educora/screens/home_screen.dart';
import 'package:educora/screens/my_activity_screen.dart';
import 'package:educora/screens/payment_success_screen.dart';
import 'package:educora/screens/video_chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:device_preview/device_preview.dart';
import 'package:sizer/sizer.dart';
import './screens/onboarding.dart';
import 'screens/login_signup_screen.dart';
import 'screens/course_detail_screen.dart';
import 'screens/popular_teachers_screen.dart';
import 'screens/courses_screen.dart';
import 'screens/class_booking_screen.dart';
import 'screens/teachers_booking_screen.dart';
import 'screens/timer_screen.dart';
import 'screens/pages.dart';
import 'screens/books_screen.dart';
import 'screens/search_screen.dart';
import 'screens/menu_screen.dart';
import 'screens/checkout_screen.dart';
import 'screens/scanner_screen.dart';
import 'screens/track_order_screen.dart';
import 'package:flutter/foundation.dart';
import 'utils/utils.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: Sizer(builder: (context, orientation, deviceType) {
        return MaterialApp(
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          title: 'Educora',
          theme: ThemeData(
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                elevation: 0,
                toolbarHeight: 60,
              ),
              iconTheme: const IconThemeData(color: Colors.black),
              primaryColor: const Color.fromRGBO(55, 106, 237, 1),
              scaffoldBackgroundColor: Colors.white,
              floatingActionButtonTheme: const FloatingActionButtonThemeData(
                backgroundColor: Color.fromRGBO(55, 106, 237, 1),
              ),
              buttonTheme: ButtonThemeData(
                buttonColor: const Color.fromRGBO(55, 106, 237, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                textTheme: ButtonTextTheme.primary,
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => const Color.fromRGBO(55, 106, 237, 1)),
                      shape: MaterialStateProperty.resolveWith(
                        (states) => RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1.h),
                          side: const BorderSide(
                            color: Color.fromRGBO(55, 106, 237, 1),
                          ),
                        ),
                      ),
                      textStyle: MaterialStateProperty.resolveWith((states) =>
                          TextStyle(
                              fontSize: 14.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w400)),
                      padding: MaterialStateProperty.resolveWith(
                          (states) => EdgeInsets.symmetric(vertical: 3.h)))),
              textTheme: TextTheme(
                  headline1: TextStyle(
                      fontSize: 29.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                  headline2: TextStyle(
                      fontSize: 23.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                  headline3: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                  headline4: TextStyle(
                      fontSize: 17.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                  headline5:
                      TextStyle(fontSize: 15.sp, color: Colors.black, fontWeight: FontWeight.w500),
                  headline6: TextStyle(fontSize: 12.sp, color: Colors.black, fontWeight: FontWeight.w400),
                  bodyText1: TextStyle(fontSize: 10.sp, color: Colors.black, fontWeight: FontWeight.w400),
                  bodyText2: TextStyle(fontSize: 8.sp, color: Colors.black, fontWeight: FontWeight.w400),
                  caption: TextStyle(
                    fontSize: 8.sp,
                    color: AppColorData.secodaryText,
                  ))),
          initialRoute: '/onboarding',
          routes: {
            OnboardingScreen.routeName: (ctx) => const OnboardingScreen(),
            HomeScreen.routeName: (ctx) => const Pages(
                  currentIndex: 0,
                ),
            BooksScreen.routeName: (ctx) => const Pages(
                  currentIndex: 1,
                ),
            SearchScreen.routeName: (ctx) => const Pages(
                  currentIndex: 2,
                ),
            MenuScreen.routeName: (ctx) => const Pages(
                  currentIndex: 3,
                ),
            LoginSigninScreen.routeName: (ctx) => const LoginSigninScreen(),
            CourseDetailScreen.routeName: (ctx) => const CourseDetailScreen(),
            PopularTeachersScreen.routeName: (ctx) =>
                const PopularTeachersScreen(),
            CourseScreen.routeName: (ctx) => const CourseScreen(),
            ClassBookingScreen.routeName: (ctx) => const ClassBookingScreen(),
            TeachersBookingScreen.routeName: (ctx) =>
                const TeachersBookingScreen(),
            TimerScreen.routeName: (ctx) => const TimerScreen(),
            BookDetailScreen.routeName: (ctx) => const Pages(
                  currentIndex: 4,
                ),
            CheckoutScreen.routeName: (ctx) => const CheckoutScreen(),
            ScannerScreen.routeName: (ctx) => const ScannerScreen(),
            PaymentSuccessScreen.routeName: (ctx) =>
                const PaymentSuccessScreen(),
            TrackOrderScreen.routeName: (ctx) => const TrackOrderScreen(),
            VideoChatScreen.routeName: (ctx) => const VideoChatScreen(),
            MyActivityScreen.routeName: (ctx) => const Pages(
                  currentIndex: 6,
                ),
          },
        );
      }),
    );
  }
}
