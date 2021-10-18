import 'package:educora/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import '../widgets/pt_tab.dart';

class PopularTeachersScreen extends StatefulWidget {
  const PopularTeachersScreen({Key? key}) : super(key: key);

  @override
  _PopularTeachersScreenState createState() => _PopularTeachersScreenState();
}

class _PopularTeachersScreenState extends State<PopularTeachersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10.h,
        leadingWidth: 70.sp,
        leading: Builder(
          builder: (context) {
            return Padding(
              padding: EdgeInsets.only(top: 3.h),
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
        actions: [
          Padding(
              padding: EdgeInsets.only(bottom: 1.h, right: 4.w, top: 3.h),
              child: Image.asset(Resource.profileIcon))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 5.h),
          child: Column(
            children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppConstant.popularTeachers,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SvgPicture.asset(
                        Resource.ptIcon,
                        height: 3.5.h,
                      )
                    ],
                  ),
                  SizedBox(height: 5.h),
                ] +
                List.generate(
                  5,
                  (index) => Padding(
                    padding: EdgeInsets.only(top: 2.h),
                    child: PtTab(
                      title: AppConstant.ptList[index]['title'],
                      years: AppConstant.ptList[index]['years'],
                      imgPath: AppConstant.ptList[index]['imgPath'],
                      isFirst: AppConstant.ptList[index]['isFirst'],
                    ),
                  ),
                ),
          ),
        ),
      ),
    );
  }
}
