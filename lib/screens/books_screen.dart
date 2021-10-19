import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import '../utils/utils.dart';
import 'dart:math';

class BooksScreen extends StatefulWidget {
  const BooksScreen({Key? key}) : super(key: key);

  @override
  _BooksScreenState createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
  int selected = 2;

  Widget _buildListItem(BuildContext context, int index) {
    if (index == AppConstant.scrollerData.length) {
      return Container(
        width: 45.w,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.h),
        ),
        child: Center(
          child: Text(
            'View All',
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
      );
    }
    return InkWell(
      onTap: () => Navigator.pushNamed(context, ViewRouter.bookDetail),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(2.h),
        child: Stack(children: [
          ShaderMask(
            blendMode: BlendMode.srcATop,
            shaderCallback: (bounds) {
              return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, AppColorData.bookShade])
                  .createShader(bounds);
            },
            child: SizedBox(
              width: 45.w,
              height: 50.h,
              child: Image.asset(
                AppConstant.scrollerData.elementAt(index)['imgUrl']!,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              height: 6.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppConstant.scrollerData.elementAt(index)['name']!,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColorData.bookName,
                          ),
                    ),
                    Text(
                      AppConstant.scrollerData.elementAt(index)['author']!,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: AppColorData.bookAuthor,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  double customEquation(double distance) {
    return 1 - min(distance.abs() / 50.w, 0.2);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                AppConstant.explore,
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.end,
                children: [
                  Text(
                    AppConstant.e,
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(fontWeight: FontWeight.w500, fontSize: 27.sp),
                  ),
                  Text(
                    AppConstant.book,
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 6.w),
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
              fillColor: AppColorData.booksInpFill,
              suffixIconConstraints: BoxConstraints(maxHeight: 20.sp),
              filled: true,
              hintText: AppConstant.searchForNewBooks,
            ),
            onChanged: (value) {},
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
          child: Row(
            children: [
              Text(
                AppConstant.featuredBooks,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        SizedBox(
          height: 40.h,
          child: ScrollSnapList(
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            itemBuilder: _buildListItem,
            itemCount: AppConstant.scrollerData.length + 1,
            itemSize: 45.w,
            dynamicSizeEquation: customEquation,
            onItemFocus: (value) {},
            dynamicItemSize: true,
            selectedItemAnchor: SelectedItemAnchor.START,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
          child: Row(
            children: [
              Text(
                AppConstant.trendingBooks,
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.w, right: 6.w, top: 0, bottom: 10.h),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 25.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.h),
                              image: const DecorationImage(
                                  image: AssetImage(Resource.book3),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(height: 1.h),
                        Text(AppConstant.book3,
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(fontWeight: FontWeight.w500)),
                        Text(AppConstant.author3,
                            style: Theme.of(context).textTheme.bodyText2),
                      ],
                    )),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 25.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.h),
                              image: const DecorationImage(
                                  image: AssetImage(Resource.book4),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(height: 1.h),
                        Text(AppConstant.book4,
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(fontWeight: FontWeight.w500)),
                        Text(AppConstant.author4,
                            style: Theme.of(context).textTheme.bodyText2),
                      ]),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 25.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.h),
                              image: const DecorationImage(
                                  image: AssetImage(Resource.book5),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(height: 1.h),
                        Text(AppConstant.book5,
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(fontWeight: FontWeight.w500)),
                        Text(AppConstant.author5,
                            style: Theme.of(context).textTheme.bodyText2),
                      ]),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 6.h)
      ]),
    );
  }
}
