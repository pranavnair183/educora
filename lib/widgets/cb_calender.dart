import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:educora/utils/utils.dart';

class CustomCalendar extends StatefulWidget {
  const CustomCalendar({
    Key? key,
    required this.updateDate,
  }) : super(key: key);

  final Function(DateTime date) updateDate;

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  PageController? _pageController;
  final ValueNotifier<DateTime> _focusedDay =
      ValueNotifier(DateTime.parse("2021-03-01 13:27:00"));

  @override
  void dispose() {
    _focusedDay.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_focusedDay.value, selectedDay)) {
      setState(() {
        _focusedDay.value = selectedDay;
      });
      widget.updateDate(selectedDay);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ValueListenableBuilder<DateTime>(
        valueListenable: _focusedDay,
        builder: (context, value, _) {
          return _CalendarHeader(
            focusedDay: value,
            onLeftArrowTap: () {
              _pageController!.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut,
              );
              setState(() {
                _focusedDay.value = value;
              });
            },
            onRightArrowTap: () {
              _pageController!.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut,
              );
              setState(() {
                _focusedDay.value = value;
              });
            },
          );
        },
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.w),
        child: TableCalendar(
          calendarStyle: CalendarStyle(
            defaultTextStyle: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.w600),
            weekendTextStyle: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.w600),
            outsideTextStyle: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontWeight: FontWeight.w100),
            selectedTextStyle: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColorData.primaryTxt,
                ),
            selectedDecoration: BoxDecoration(
                color: Theme.of(context).primaryColor, shape: BoxShape.circle),
            isTodayHighlighted: false,
            todayTextStyle: Theme.of(context).textTheme.headline6!,
          ),
          availableGestures: AvailableGestures.none,
          onCalendarCreated: (controller) => _pageController = controller,
          rowHeight: 6.h,
          headerVisible: false,
          calendarFormat: CalendarFormat.month,
          onPageChanged: (focusedDay) => _focusedDay.value = focusedDay,
          daysOfWeekHeight: 3.h,
          daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w600),
              weekendStyle: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w600),
              dowTextFormatter: (date, locale) =>
                  DateFormat.E(locale).format(date)[0]),
          selectedDayPredicate: (day) => isSameDay(_focusedDay.value, day),
          onDaySelected: _onDaySelected,
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: _focusedDay.value,
        ),
      ),
    ]);
  }
}

class _CalendarHeader extends StatelessWidget {
  final DateTime focusedDay;
  final VoidCallback onLeftArrowTap;
  final VoidCallback onRightArrowTap;

  const _CalendarHeader({
    Key? key,
    required this.focusedDay,
    required this.onLeftArrowTap,
    required this.onRightArrowTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: Row(
        children: [
          const Spacer(),
          InkWell(
            child: Icon(
              Icons.arrow_back,
              size: 15.sp,
            ),
            onTap: onLeftArrowTap,
          ),
          Text(
            DateFormat.yMMMM().format(focusedDay),
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
          ),
          InkWell(
            child: Icon(
              Icons.arrow_forward,
              size: 15.sp,
            ),
            onTap: onRightArrowTap,
          ),
          const Spacer()
        ],
      ),
    );
  }
}
