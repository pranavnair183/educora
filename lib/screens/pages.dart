import 'package:educora/screens/book_detail.dart';
import 'package:educora/screens/course_detail_screen.dart';
import 'package:educora/screens/my_activity_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../widgets/drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/utils.dart';
import 'home_screen.dart';
import 'books_screen.dart';
import 'search_screen.dart';
import 'menu_screen.dart';

class Pages extends StatefulWidget {
  const Pages({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  final int currentIndex;

  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  List<Widget> pages = const [
    HomeScreen(),
    BooksScreen(),
    SearchScreen(),
    MenuScreen(),
    BookDetailScreen(),
    CourseDetailScreen(),
    MyActivityScreen(),
  ];
  final _drawerController = ZoomDrawerController();
  int? index;

  @override
  void initState() {
    index = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: _drawerController,
      menuScreen: const DrawerMenu(),
      borderRadius: 5.h,
      showShadow: true,
      backgroundColor: Theme.of(context).primaryColor,
      slideWidth: 45.w,
      mainScreen: Scaffold(
        extendBody: true,
        body: pages[index!],
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          margin: EdgeInsets.only(bottom: 2.h),
          child: SizedBox(
            height: 16.w,
            width: 16.w,
            child: FloatingActionButton(
              elevation: 10,
              onPressed: () {},
              backgroundColor:
                  Theme.of(context).floatingActionButtonTheme.backgroundColor,
              child: Icon(
                Icons.add_outlined,
                size: 25.sp,
                color: const Color.fromRGBO(143, 230, 255, 1),
              ),
            ),
          ),
        ),
        appBar: (index == 0 || index == 1 || index == 2 || index == 3)
            ? AppBar(
                toolbarHeight: 12.h,
                leadingWidth: 70.sp,
                leading: Builder(builder: (context) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 1.h, top: 5.h),
                    child: ElevatedButton(
                      onPressed: () => ZoomDrawer.of(context)!.toggle(),
                      child: SvgPicture.asset(
                        Resource.drawerIcon,
                        height: 17.sp,
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        primary: Colors.white60,
                        onPrimary: Colors.white60,
                        shadowColor: Colors.white70,
                        elevation: 5,
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  );
                }),
                actions: [
                  Padding(
                      padding:
                          EdgeInsets.only(bottom: 1.h, right: 4.w, top: 5.h),
                      child: Image.asset(Resource.profileIcon))
                ],
              )
            : AppBar(
                toolbarHeight: 10.h,
                leading: Builder(builder: (context) {
                  return Padding(
                      padding: EdgeInsets.only(top: 0.h),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: 5.h,
                          color: Colors.black,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ));
                }),
                title: (index == 6)
                    ? Text(
                        AppConstant.myActivity,
                        style: Theme.of(context).textTheme.headline4!,
                      )
                    : null,
                centerTitle: true,
                actions: [
                  Padding(
                      padding: EdgeInsets.only(right: 4.w, top: 3.h),
                      child: Stack(children: [
                        Icon(
                          Icons.notifications_none,
                          size: 28.sp,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 7.sp, left: 4.sp),
                          child: Container(
                            height: 9.sp,
                            width: 10.sp,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              border: Border.all(
                                color: Colors.red,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                        )
                      ]))
                ],
              ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(3.h),
            topRight: Radius.circular(3.h),
          ),
          child: SizedBox(
            height: 9.h,
            child: BottomAppBar(
              elevation: 10,
              shape: const CircularNotchedRectangle(),
              notchMargin: 4.sp,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: MaterialButton(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () => setState(() {
                          index = 0;
                        }),
                        child: ColorFiltered(
                            colorFilter: (index == 0 || index == 6)
                                ? const ColorFilter.mode(
                                    Colors.transparent,
                                    BlendMode.multiply,
                                  )
                                : const ColorFilter.matrix(<double>[
                                    0.2126,
                                    0.7152,
                                    0.0722,
                                    0,
                                    0,
                                    0.2126,
                                    0.7152,
                                    0.0722,
                                    0,
                                    0,
                                    0.2126,
                                    0.7152,
                                    0.0722,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0,
                                    1,
                                    0,
                                  ]),
                            child: Column(children: [
                              Image.asset(
                                Resource.homeIconBab,
                                height: 17.sp,
                              ),
                              SizedBox(height: 1.h),
                              Text(
                                AppConstant.home,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w500),
                              )
                            ])),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () => setState(() {
                          index = 1;
                        }),
                        child: ColorFiltered(
                            colorFilter: (index == 1 || index == 4)
                                ? const ColorFilter.mode(
                                    Colors.transparent,
                                    BlendMode.multiply,
                                  )
                                : const ColorFilter.matrix(<double>[
                                    0.2126,
                                    0.7152,
                                    0.0722,
                                    0,
                                    0,
                                    0.2126,
                                    0.7152,
                                    0.0722,
                                    0,
                                    0,
                                    0.2126,
                                    0.7152,
                                    0.0722,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0,
                                    1,
                                    0,
                                  ]),
                            child: Column(children: [
                              Image.asset(
                                Resource.bookIconBab,
                                height: 17.sp,
                              ),
                              SizedBox(height: 1.h),
                              Text(
                                AppConstant.books,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w500),
                              )
                            ])),
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Expanded(
                      child: MaterialButton(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () => setState(() {
                          index = 2;
                        }),
                        child: ColorFiltered(
                            colorFilter: index == 2
                                ? const ColorFilter.mode(
                                    Colors.transparent,
                                    BlendMode.multiply,
                                  )
                                : const ColorFilter.matrix(<double>[
                                    0.2126,
                                    0.7152,
                                    0.0722,
                                    0,
                                    0,
                                    0.2126,
                                    0.7152,
                                    0.0722,
                                    0,
                                    0,
                                    0.2126,
                                    0.7152,
                                    0.0722,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0,
                                    1,
                                    0,
                                  ]),
                            child: Column(children: [
                              Image.asset(
                                Resource.searchIconBab,
                                height: 17.sp,
                              ),
                              SizedBox(height: 1.h),
                              Text(
                                AppConstant.search,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w500),
                              )
                            ])),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () => setState(() {
                          index = 3;
                        }),
                        child: ColorFiltered(
                          colorFilter: (index == 3)
                              ? const ColorFilter.mode(
                                  Colors.transparent,
                                  BlendMode.multiply,
                                )
                              : const ColorFilter.matrix(<double>[
                                  0.2126,
                                  0.7152,
                                  0.0722,
                                  0,
                                  0,
                                  0.2126,
                                  0.7152,
                                  0.0722,
                                  0,
                                  0,
                                  0.2126,
                                  0.7152,
                                  0.0722,
                                  0,
                                  0,
                                  0,
                                  0,
                                  0,
                                  1,
                                  0,
                                ]),
                          child: Column(
                            children: [
                              Image.asset(
                                Resource.menuIconBab,
                                height: 17.sp,
                              ),
                              SizedBox(height: 1.h),
                              Text(
                                AppConstant.menu,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
