import 'package:educora/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../widgets/courses_app_bar.dart';
import '../widgets/progress_card.dart';

class CourseScreen extends StatefulWidget {
  static String routeName = ViewRouter.courses;
  const CourseScreen({Key? key}) : super(key: key);

  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: CoursesAppBar(expandedHeight: 30.h),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 5.h,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: 0,
                      color: AppColorData.coursesHeaderBg,
                    ),
                    bottom: BorderSide(
                      width: 0,
                      color: Colors.white,
                    ),
                  ),
                  color: AppColorData.coursesHeaderBg,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: 5.h,
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.h),
                          topRight: Radius.circular(4.h),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate.fixed([
                Container(
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                  child: const ProgressCard(
                    name: 'XD Prototyping',
                    imgPath: 'assets/images/icons/xd_icon.png',
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                  child: const ProgressCard(
                    name: 'Sketch',
                    imgPath: 'assets/images/icons/sketch_icon.png',
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                  child: const ProgressCard(
                    name: 'After Effects',
                    imgPath: 'assets/images/icons/ae_icon.png',
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                  child: const ProgressCard(
                    name: 'Figma',
                    imgPath: 'assets/images/icons/figma_icon.png',
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                  child: const ProgressCard(
                    name: 'Adobe Photoshop',
                    imgPath: 'assets/images/icons/ps_icon.png',
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
