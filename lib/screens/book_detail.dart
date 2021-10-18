import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:educora/utils/utils.dart';

class BookDetailScreen extends StatefulWidget {
  const BookDetailScreen({Key? key}) : super(key: key);

  @override
  _BookDetailScreenState createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 35.h,
                width: 45.w,
                child: Image.asset(
                  Resource.book1,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      AppConstant.davidWolf,
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                    Text(
                      AppConstant.scrollerData.elementAt(0)['name']!,
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 0.5.h),
                    Text(
                      AppConstant.scrollerData.elementAt(0)['author']!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 12.sp),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: ElevatedButton(
                        style: Theme.of(context).elevatedButtonTheme.style,
                        onPressed: () => Navigator.of(context)
                            .pushNamed(ViewRouter.checkout),
                        child: Text(
                          AppConstant.buyEbook,
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: AppColorData.buyEbookBtn),
                        )),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.resolveWith(
                            (states) => RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1.h),
                              side: BorderSide(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => AppColorData.buyAudioBtn),
                          padding: MaterialStateProperty.resolveWith(
                              (states) => EdgeInsets.symmetric(vertical: 3.h))),
                      onPressed: () =>
                          Navigator.of(context).pushNamed(ViewRouter.checkout),
                      child: Text(
                        AppConstant.buyAudio,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: Theme.of(context).primaryColor,
                            ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  AppConstant.bestSeller,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: const Color.fromRGBO(68, 68, 68, 1),
                      fontWeight: FontWeight.w400),
                ))
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: 6.w, right: 6.w, top: 0, bottom: 10.h),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 16.h,
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
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 16.h,
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
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 16.h,
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
          SizedBox(height: 5.h)
        ],
      ),
    );
  }
}
