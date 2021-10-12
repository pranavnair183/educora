import 'package:flutter/material.dart';
import 'package:educora/models/user.dart';

class AppColorData {
  static const Color booksInpFill = Color.fromRGBO(227, 241, 255, 1);
  static const Color searchInpFill = Color.fromRGBO(227, 241, 255, 1);
  static const Color homeInpFill = Color.fromRGBO(244, 247, 250, 1);
  static const Color flagBg = Color.fromRGBO(241, 199, 62, 0.3);
  static const Color barrierBg = Color.fromRGBO(55, 106, 237, 0.3);
  static const Color rangeAnnotation = Color.fromRGBO(255, 255, 255, 0.25);
  static const Color chartItems = Color.fromRGBO(255, 255, 255, 0.6);
  static const Color chartLine = Color.fromRGBO(255, 255, 255, 0.3);
  static const Color doneBg = Color.fromRGBO(13, 226, 162, 1);
  static const Color bookBg = Color.fromRGBO(239, 172, 174, 0.3);
  static const Color dispatchedBg = Color.fromRGBO(214, 107, 171, 0.5);
  static const Color orderPlacedBg = Color.fromRGBO(127, 215, 125, 0.5);
  static const Color boardBg = Color.fromRGBO(21, 87, 151, 0.2);
  static const Color iconButtonBg = Color.fromRGBO(25, 27, 26, 0.08);
  static const Color tbDaysBg = Color.fromRGBO(208, 208, 208, 0.5);
  static const Color studentBg = Color.fromRGBO(235, 237, 242, 1);
  static const Color onboardingBg = Color.fromRGBO(242, 242, 242, 1);
  static const Color onboardingTxt = Color.fromRGBO(52, 54, 116, 1);
  static const Color coursesHeaderBg = Color.fromRGBO(38, 32, 44, 1);
  static const Color homeHeaderBg = Color.fromRGBO(38, 32, 44, 1);
  static const Color loginHeaderBg = Color.fromRGBO(242, 242, 242, 1);
  static const Color secodaryText = Color.fromRGBO(255, 255, 255, 0.25);
  static const Color courseTotalTimeBg = Color.fromRGBO(195, 210, 250, 1);
  static const Color paymentSuccessPb1 = Color.fromRGBO(253, 85, 186, 1);
  static const Color paymentSuccessDoneBg1 = Color.fromRGBO(208, 208, 208, 0.1);
  static const Color paymentSuccessDoneBg2 = Color.fromRGBO(26, 210, 133, 1);
  static const Color scannerDoneBg3 = Color.fromRGBO(33, 150, 243, 1);
  static const Color progressCardBg = Color.fromRGBO(244, 247, 250, 1);
  static const Color progressCardTxt = Color.fromRGBO(48, 95, 114, 1);

  static const Color buyEbookBtn = Colors.white;
  static Color buyAudioBtn = Colors.blue[50]!;
  static Color bookShade = Colors.black;
  static const Color bookName = Colors.white;
  static const Color bookAuthor = Colors.white;
  static const Color secondaryIcon = Colors.white;
  static Color checkoutOptionBox = Colors.blue[50]!;
  static const Color notificationDot = Colors.red;
  static const Color calenderIcon = Colors.grey;
  static const Color homeHeaderTxt = Colors.white;
  static const Color categoriesBtn = Colors.white;
  static const Color loginSignupBg = Colors.white;
  static const Color loginSignupTxtActive = Colors.white;
  static Color loginSignupTxtInactive = Colors.blue[100]!;
  static const Color loginSheet = Colors.white;
  static Color menuTab = Colors.blue[50]!;
  static const Color dayWeekSwitchActive = Colors.white;
  static const Color primaryTxt = Colors.white;
}

class AppConstant {
  static User user =
      User(firstName: "Yousuf", lastName: "Sayman", type: "Student");
  static const String classBooking = "Class Booking";
  static const String availableClasses = "Available classes";
  static const String figmaClass = "Figma class";
  static const String selectADate = "   Select a date";
  static const String bookNow = "Book now";
  static const String tomCruise = "Tom Cruise";
  static const String student = "Student";
  static const String eightyFivePercent = "85%";
  static const String goal = "Goal";
  static const String thirtyTwo = "32";
  static const String totalClass = "Total Class";
  static const String plusTen = "+10";
  static const String totalBooks = "Total Books";
  static const String course = "Course";
  static const String details = " Details";
  static const String threeHoursTwentyMin = "3 hours, 20 min";
  static const String introduction = "Introduction";
  static const String theLanguageOfColor = "The Language of Color";
  static const String thePsychologyOfColor = "The Psychology of Color";
  static const String welcomeBack = "Welcome back \n ";
  static const String startLearning = "Start learning";
  static const String newStudent = "new Student!";
  static const String categories = "Categories";
  static const String classInProgress = "Class in progress";
  static const String xdPrototyping = "XD Prototyping";
  static const String sketch = "Sketch";
  static const String afterEffects = "After Effects";
  static const String login = "LOGIN";
  static const String signUp = "SIGN UP";
  static const String verificationCode = "Verification Code";
  static const String enterTheFourDigit =
      "Enter the 4 digit codethat you recieved \n on your email";
  static const String verifyPin = "Verify PIN";
  static const String email = "Email";
  static const String show = "Show";
  static const String hide = "Hide";
  static const String password = "Password";
  static const String forgotPassword = "Forgot password?";
  static const String loginSmall = "Login";
  static const String createAccount = "Create account";
  static const String signUpSmall = "Sign up";
  static const String next = "Next";
  static const String getStarted = "Get Started";
  static const String learnOnlineFromYourHome =
      "Learn Online From \n Your Home";
  static const String theBestPlatformForOnlineLearning =
      "The Best Platform For \n Online Learning";
  static const String random =
      "vfvfdvdfvdf vvdfvfd vdfvdf vvdvdf vdfvfdv \n vdfvdfvdf vdvdfvfd vdvdefdsds dffd \n vfdvdfvv asd asda cxcxx";
  static const String welcomeToEducora = "Welcome to \nEducora";
  static const String loginAsA = "Login as a";
  static const String teacher = "Teacher";
  static const String popularTeachers = "Popular \nteachers! ";
  static const String adobeXd = "Adobe XD";
  static const String figma = "Figma";
  static const String adobePs = "Adobe PS";
  static const String teachersBooking = "Teachers Booking";
  static const String bookAppointment = "Book appointment";
  static const String mar = "Mar";
  static const String threeTeachersAvailable = "3 Teachers available on ";
  static const String eighteenMarch = "18 March 2021";
  static const String timer = "Timer";
  static const String time = "Time";
  static const String runningClass = "  Running Class";
  static const String today = "Today";
  static const String seeAll = "See All";
  static const String stop = "Stop";
  static const String start = "Start";
  static const String random2 =
      "dsvsdc sdcsdc csdcdsc sdcsdc csdc\n cscsdc cdscsdcdqw csc.";
  static const String courses = "Courses";
  static const String online = "Online";
  static const String studentCapital = "  STUDENT";
  static const String home = "Home";
  static const String videos = "Videos";
  static const String messages = "Messages";
  static const String ebook = "E-Book";
  static const String settings = "Settings";
  static const String logout = "Logout";
  static const String tenHoursNineteenLessons = "10 hours, 19 lessons";
  static const String twentyFivePercent = "25%";
  static const String years = "Years";
  static const String books = "Books";
  static const String popularTeachers2 = "Popular Teachers";
  static const String search = "Search";
  static const String menu = "Menu";
  static const String explore = "Explore, ";
  static const String e = "e";
  static const String book = "book!";
  static const String searchForNewBooks = "Search for new Books!";
  static const String searchForAnything = "Search for anything..";
  static const String trendingBooks = "Trending Books";
  static const String featuredBooks = "Featured Books";
  static const String book3 = "Futurama";
  static const String author3 = "Michael Douglas JR.";
  static const String book4 = "Nora Barret";
  static const String author4 = "D. John Nora";
  static const String book5 = "Stolen Moon";
  static const String author5 = "M.H. Anderson";
  static const String davidWolf = "David Wolf";
  static const String myActivity = "My Activity";
  static const String buyEbook = "Buy Ebook";
  static const String buyAudio = "Buy Audio";
  static const String checkout = "Checkout";
  static const String bestSeller = "Best Seller";
  static const String total = "Total";
  static const String confirmAndPay = "Confirm and pay";
  static const String products = "Products:";
  static const String paymentMethod = "Payment Method";
  static const String scanSuccess = "Scan Success";
  static const String paymentSuccess = "Payment Success";
  static const String scanFailed = "Scan Failed";
  static const String tryAgain = "Try Again";
  static const String payment = "Payment";
  static const String day = "Day";
  static const String week = "Week";
  static const String classCompleted = "Class \nCompleted";
  static const String timeDurationTxt = "Time \nDuration";
  static const String alreadyHavingAccountLogin =
      "Already having account? Login";
  static const String trackOrder = "Track Order";
  static const String deliveryDate = "Sat 13 - Tue 16 Mar";
  static const String fourToSixDays = "4-6 Days";
  static const String trackingOrder = "Tracking Order";
  static const String backToHome = "Back to Home";
  static const String whereIsMyOrder = "Where is my order";
  static const String estimatedDeliveryTime = "Estimated Delivery time";
  static const String onTheWay = "On the way";
  static const String talkToExperts = "Talk to experts";
  static const String arrivingBy = "Arriving by 10:00AM today";
  static const String dispatched = "Dispatched";
  static const String dispatchedDate = "On 12 Jun 2020 at 14:00";
  static const String orderPlacedSuccessfully = "Order placed successfully";
  static const String orderPlacedDate = "on 10 Jun 2020 at 13:23";

  static const String yourCreditCardScanFailed =
      "Your credit card scan failed.\n Please try again!";
  static const String totalPrice = "\$ 102";
  static const String payNow = "Pay now";
  static const String scanNow = "Scan now";
  static const String scanCard = "Scan Card";
  static const String yourCreditCardIsSuccessFullyScanned =
      "Your credit card is successfully \n scanned!";
  static const String bankNo = "**** **** **** 1234";
  static const String timeDuration = "00:42:21";
  static const String videoChatDuration = "00:15:20";
  static List<Map<String, dynamic>> badgeList1 = [
    {'title': 'Apps', 'txtColor': Colors.red, 'bgColor': Colors.red[100]},
    {
      'title': 'ui design',
      'txtColor': Colors.purple,
      'bgColor': Colors.purple[100]
    },
  ];
  static List<Map<String, dynamic>> badgeList2 = [
    {'title': 'App ui', 'txtColor': Colors.grey, 'bgColor': Colors.grey[300]},
    {
      'title': 'Website',
      'txtColor': Colors.orange,
      'bgColor': Colors.orange[100]
    },
  ];
  static List<Map<String, dynamic>> badgeList3 = [
    {
      'title': 'video Editing',
      'txtColor': Colors.grey,
      'bgColor': Colors.grey[300]
    },
    {'title': 'Animation', 'txtColor': Colors.red, 'bgColor': Colors.red[100]},
  ];
  static List<Map<String, dynamic>> badgeList4 = [
    {
      'title': 'Ui Design',
      'txtColor': Colors.grey,
      'bgColor': Colors.grey[300]
    },
    {'title': 'UI/UX', 'txtColor': Colors.green, 'bgColor': Colors.green[100]},
  ];

  static const List<Map<String, String>> info = [
    {'title': 'Adobe XD', 'years': '05', 'imgPath': Resource.tb1},
    {'title': 'Sketch', 'years': '4.5', 'imgPath': Resource.tb2},
    {'title': 'After Effects', 'years': '3.5', 'imgPath': Resource.tb3},
  ];
  static const List<Map<String, String>> scrollerData = [
    {'name': "Cold Lake", 'author': "Jeff Carson", 'imgUrl': Resource.book1},
    {
      'name': "Futurama",
      'author': "Michael Douglas JR.",
      'imgUrl': Resource.book2
    },
    {'name': "Nora Barret", 'author': "D. John Nora", 'imgUrl': Resource.book4},
  ];
}

class Resource {
  static const String cbFooter = 'assets/images/cb_footer.png';
  static const String profilePicCourseDetail =
      'assets/images/profile_pic_cd.png';
  static const String studentIcon = 'assets/images/icons/student_icon.png';
  static const String flagIcon = 'assets/images/icons/flag_cd.png';
  static const String boardIcon = 'assets/images/icons/board_cd.png';
  static const String searchIcon = 'assets/images/icons/search_icon.svg';
  static const String figmaIcon = 'assets/images/icons/figma_icon.png';
  static const String aeIcon = 'assets/images/icons/ae_icon.png';
  static const String sketchIcon = 'assets/images/icons/sketch_icon.png';
  static const String xdIcon = 'assets/images/icons/xd_icon.png';
  static const String settingsIcon = 'assets/images/icons/settings_icon.svg';
  static const String bookIcon = 'assets/images/icons/book_cd.png';
  static const String drawerIcon = 'assets/images/icons/drawer_icon.svg';
  static const String profileIcon = 'assets/images/icons/profile_icon.png';
  static const String scannerIcon = 'assets/images/icons/scanner_icon.svg';
  static const String loginbubbles = 'assets/images/lh_bubbles.png';
  static const String loginLogo = 'assets/images/lh_logo.png';
  static const String courseHeader = 'assets/images/courses_header.png';
  static const String tbIcon = 'assets/images/icons/tb_icon.svg';
  static const String ptIcon = 'assets/images/icons/pt_icon.svg';
  static const String pt1 = 'assets/images/pt1.png';
  static const String pt2 = 'assets/images/pt2.png';
  static const String pt3 = 'assets/images/pt3.png';
  static const String pt4 = 'assets/images/pt4.png';
  static const String pt5 = 'assets/images/pt5.png';
  static const String ob1 = 'assets/images/onboarding1.png';
  static const String ob2 = 'assets/images/onboarding2.png';
  static const String ob3 = 'assets/images/onboarding3.png';
  static const String tb1 = 'assets/images/tb_1.png';
  static const String tb2 = 'assets/images/tb_2.png';
  static const String tb3 = 'assets/images/tb_3.png';
  static const String book1 = 'assets/images/book1.png';
  static const String book2 = 'assets/images/book2.png';
  static const String book3 = 'assets/images/book3.png';
  static const String book4 = 'assets/images/book4.png';
  static const String book5 = 'assets/images/book5.png';
  static const String girl1 = 'assets/images/girl1.png';
  static const String girl2 = 'assets/images/girl2.png';
  static const String visaIcon = 'assets/images/icons/visa_icon.png';
  static const String doneIcon = 'assets/images/icons/done_icon.svg';
  static const String failedIcon = 'assets/images/icons/failed_icon.svg';
  static const String mcIcon = 'assets/images/icons/mc_icon.png';
  static const String bankIcon = 'assets/images/icons/bank_icon.png';
  static const String endCallIcon = 'assets/images/icons/endcall_icon.svg';
  static const String homeHeader = 'assets/images/home_header.png';
  static const String creditCard = 'assets/images/credit_card.png';
  static const String scanCard = 'assets/images/scan_card.png';
  static const String scanFrame = 'assets/images/scan_frame.png';
  static const String homeIconVcBab = 'assets/images/icons/home_vc_bab.svg';
  static const String menuIconVcBab = 'assets/images/icons/menu_vc_bab.svg';
  static const String homeIconBab = 'assets/images/icons/home_icon_active.png';
  static const String bookIconBab = 'assets/images/icons/books_icon_active.png';
  static const String dHomeIcon = 'assets/images/icons/d_home_icon.svg';
  static const String dVideosIcon = 'assets/images/icons/d_videos_icon.svg';
  static const String dMsgIcon = 'assets/images/icons/d_messages_icon.svg';
  static const String dCoursesIcon = 'assets/images/icons/d_courses_icon.svg';
  static const String dEbookIcon = 'assets/images/icons/d_ebook_icon.svg';
  static const String dSettingsIcon = 'assets/images/icons/d_settings_icon.svg';
  static const String dLogoutIcon = 'assets/images/icons/d_logout_icon.svg';
  static const String searchIconBab =
      'assets/images/icons/search_icon_bab_active.png';
  static const String menuIconBab = 'assets/images/icons/menu_icon_active.png';
  static const String truckIcon = 'assets/images/icons/truck_icon.svg';
  static const String dispatchedIcon =
      'assets/images/icons/dispatched_icon.svg';
  static const String orderPlacedIcon =
      'assets/images/icons/order_placed_icon.svg';
}

class ViewRouter {
  static const home = '/';
  static const bookDetail = '/books_detail';
  static const books = '/books';
  static const checkout = '/checkout_screen';
  static const classBooking = '/c_booking';
  static const courseDetail = '/course_detail';
  static const courses = '/courses';
  static const loginSignin = '/login_signin';
  static const menu = '/menu';
  static const myActivity = '/my_activity';
  static const onBoarding = '/onboarding';
  static const paymentSuccess = '/payment_success';
  static const popularTeachers = '/popular_teachers';
  static const scanner = '/scanner_screen';
  static const search = '/search';
  static const teacherBooking = '/t_booking';
  static const timer = '/timer';
  static const trackOrder = '/track_order';
  static const videoChat = '/video_chat';
}
