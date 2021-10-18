import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../utils/utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.w),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h),
            child: Row(
              children: [
                Text(
                  AppConstant.search,
                  style: Theme.of(context).textTheme.headline2,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h),
            child: TextField(
              style: Theme.of(context).textTheme.headline6,
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
                fillColor: AppColorData.searchInpFill,
                suffixIconConstraints: BoxConstraints(maxHeight: 20.sp),
                filled: true,
                hintText: AppConstant.searchForAnything,
              ),
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
