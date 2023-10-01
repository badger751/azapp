// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:azapp/gen/assets.gen.dart';
import 'package:azapp/provider/user/calender_provider.dart';
import 'package:azapp/res/colors.dart';
import 'package:azapp/res/text_styles.dart';
import 'package:azapp/utils/route_name.dart';
import 'package:azapp/view/widgets/custom_button.dart';
import 'package:azapp/view/widgets/custom_grey_container.dart';
import 'package:azapp/view/widgets/screen_background_widget.dart';

class TestCalenderScreen extends StatefulWidget {
  const TestCalenderScreen({super.key});

  @override
  State<TestCalenderScreen> createState() => _TestCalenderScreenState();
}

class _TestCalenderScreenState extends State<TestCalenderScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDate = DateTime.now();

  String _getWeekdayLabel(DateTime date) {
    switch (date.weekday) {
      case DateTime.sunday:
        return 'S';
      case DateTime.monday:
        return 'M';
      case DateTime.tuesday:
        return 'T';
      case DateTime.wednesday:
        return 'W';
      case DateTime.thursday:
        return 'T';
      case DateTime.friday:
        return 'F';
      case DateTime.saturday:
        return 'S';
      default:
        return '';
    }
  }

  String userDob = "";
  void _onDaySelection(DateTime day, DateTime focusedDay) {
    setState(() {
      _selectedDate = day;
      String formattedTime = DateFormat.yMMMMd().format(_selectedDate);
      userDob = formattedTime;
    });
  }

  @override
  void initState() {
    super.initState();
    String formattedTime = DateFormat.yMMMMd().format(_selectedDate);
    userDob = formattedTime;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Consumer<CalenderProvider>(
          builder: (context, calenderState, child) {
            return Stack(children: [
              const ScreenBackgroundWidget(),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 19.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 60.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image(
                          image: AssetImage(Assets.icons.backButtonIcon.path),
                          height: 39.sp,
                        ),
                      ),
                      SizedBox(
                        height: 28.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 11.w),
                        child: Text(
                          'Enter your Date of Birth',
                          style: TextStyles.mainSubheadingStyle,
                        ),
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 11.w),
                        child: Text(
                          userDob,
                          style: TextStyles.buttonTextWhite18,
                        ),
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 11.w),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                calenderState.openClosePopupMonth();
                              },
                              child: Container(
                                height: 38.h,
                                width: 129.w,
                                padding: EdgeInsets.zero,
                                decoration: BoxDecoration(
                                  color: const Color(0xffD9D9D9).withOpacity(0.2),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12.sp),
                                  ),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(calenderState.months[_selectedDate.month - 1].month,
                                          style: TextStyles.buttonTextWhite15),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Image(
                                        image: AssetImage(Assets.icons.dropDownIcon.path),
                                        height: 8.h,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                calenderState.openClosePopupYear();
                              },
                              child: Container(
                                height: 38.h,
                                width: 129.w,
                                padding: EdgeInsets.zero,
                                decoration: BoxDecoration(
                                  color: const Color(0xffD9D9D9).withOpacity(0.2),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12.sp),
                                  ),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(_selectedDate.year.toString(), style: TextStyles.buttonTextWhite15),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Image(
                                        image: AssetImage(Assets.icons.dropDownIcon.path),
                                        height: 8.h,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Stack(
                        children: [
                          if (calenderState.isMonthTapped)
                            Padding(
                              padding: EdgeInsets.only(left: 11.w),
                              child: Container(
                                height: 310.h,
                                width: 329.w,
                                padding: EdgeInsets.only(top: 20.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.hintFontColor.withOpacity(0.05),
                                ),
                                child: SingleChildScrollView(
                                  child: AbsorbPointer(
                                    absorbing: true, //for disabeling the calender
                                    child: TableCalendar(
                                      calendarBuilders: CalendarBuilders(
                                        defaultBuilder: (context, date, _) {
                                          final weekDay = date.weekday;
                                          if (weekDay == DateTime.wednesday ||
                                              weekDay == DateTime.thursday ||
                                              weekDay == DateTime.friday ||
                                              weekDay == DateTime.saturday) {
                                            return Center(
                                                child: Text(
                                              date.day.toString(),
                                              style: TextStyle(color: AppColors.whiteColor.withOpacity(0.2)),
                                            ));
                                          } else {
                                            return const SizedBox(
                                              height: 0,
                                              width: 0,
                                            );
                                          }
                                        },
                                        outsideBuilder: (context, date, _) {
                                          // Render null for dates outside the current month
                                          return null;
                                        },
                                      ),
                                      calendarFormat: _calendarFormat,
                                      focusedDay: _selectedDate,
                                      firstDay: DateTime(1980),
                                      lastDay: DateTime(2030),
                                      headerVisible: false,
                                      rowHeight: 45.h,
                                      sixWeekMonthsEnforced: false,
                                      headerStyle: const HeaderStyle(
                                        formatButtonVisible: false,
                                      ),
                                      daysOfWeekStyle: DaysOfWeekStyle(
                                        dowTextFormatter: (date, locale) {
                                          final weekday = date.weekday;
                                          if (weekday == DateTime.wednesday ||
                                              weekday == DateTime.thursday ||
                                              weekday == DateTime.friday ||
                                              weekday == DateTime.saturday) {
                                            return _getWeekdayLabel(date);
                                          } else {
                                            return '';
                                          }
                                        },
                                        weekdayStyle: TextStyle(
                                            fontFamily: 'Open Sans',
                                            color: AppColors.whiteColor.withOpacity(0.2),
                                            fontSize: 15.sp),
                                        weekendStyle: TextStyle(
                                            fontFamily: 'Open Sans',
                                            color: AppColors.whiteColor.withOpacity(0.2),
                                            fontSize: 15.sp),
                                        // dowTextFormatter: (date, locale) => _getWeekdayLabel(date),
                                      ),
                                      calendarStyle: CalendarStyle(
                                        isTodayHighlighted: false,
                                        outsideDaysVisible: false,
                                        todayDecoration: const BoxDecoration(shape: BoxShape.circle),
                                        selectedDecoration: const BoxDecoration(
                                          color: Colors.transparent,
                                          shape: BoxShape.circle,
                                          // image: DecorationImage(
                                          //   image: AssetImage(Assets.icons.dateSelectorIcon.path),
                                          // ),
                                        ),
                                        defaultTextStyle: TextStyle(
                                          color: Colors.red, // Set the desired text color here
                                          fontSize: 15.sp,
                                          // ... other text style properties
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (calenderState.isMonthTapped)
                            Positioned(
                              child: Padding(
                                padding: EdgeInsets.only(left: 11.w),
                                child: CustomGreyContainer(
                                  height: 310.h,
                                  width: 129.w,
                                  borderRadius: 12,
                                  padding: EdgeInsets.zero,
                                  child: SizedBox(
                                    height: 10.h,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          for (int i = 0; i < calenderState.months.length; i++)
                                            Padding(
                                              padding: EdgeInsets.only(top: 17.h),
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    _selectedDate = DateTime(
                                                      _selectedDate.year,
                                                      i + 1,
                                                      _selectedDate.day,
                                                    );
                                                    calenderState.selectMonth(i);
                                                  });
                                                },
                                                child: !calenderState.months[i].isSelected
                                                    ? Text(
                                                        calenderState.months[i].month,
                                                        style: TextStyles.buttonTextWhite15,
                                                      )
                                                    : MonthYearSelector(
                                                        child: Center(
                                                          child: Text(
                                                            calenderState.months[i].month,
                                                            style: TextStyles.buttonTextWhite15,
                                                          ),
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
                          if (calenderState.isYearTapped)
                            Padding(
                              padding: EdgeInsets.only(left: 11.w),
                              child: Container(
                                height: 310.h,
                                width: 329.w,
                                padding: EdgeInsets.only(top: 20.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.hintFontColor.withOpacity(0.05),
                                ),
                                child: SingleChildScrollView(
                                  child: AbsorbPointer(
                                    absorbing: true, //Disabling the calender
                                    child: TableCalendar(
                                      calendarBuilders: CalendarBuilders(
                                        defaultBuilder: (context, date, _) {
                                          final weekDay = date.weekday;
                                          if (weekDay == DateTime.sunday ||
                                              weekDay == DateTime.monday ||
                                              weekDay == DateTime.tuesday ||
                                              weekDay == DateTime.saturday) {
                                            return Center(
                                                child: Text(
                                              date.day.toString(),
                                              style: TextStyle(color: AppColors.whiteColor.withOpacity(0.2)),
                                            ));
                                          } else {
                                            return Container();
                                          }
                                        },
                                      ),
                                      calendarFormat: _calendarFormat,
                                      focusedDay: _selectedDate,
                                      firstDay: DateTime(1980),
                                      lastDay: DateTime(2030),
                                      headerVisible: false,
                                      rowHeight: 45.h,
                                      sixWeekMonthsEnforced: false,
                                      headerStyle: const HeaderStyle(
                                        formatButtonVisible: false,
                                      ),
                                      daysOfWeekStyle: DaysOfWeekStyle(
                                        dowTextFormatter: (date, locale) {
                                          final weekDay = date.weekday;
                                          if (weekDay == DateTime.sunday ||
                                              weekDay == DateTime.monday ||
                                              weekDay == DateTime.tuesday ||
                                              weekDay == DateTime.saturday) {
                                            return _getWeekdayLabel(date);
                                          } else {
                                            return '';
                                          }
                                        },
                                        weekdayStyle: TextStyle(
                                            fontFamily: 'Open Sans',
                                            color: AppColors.whiteColor.withOpacity(0.2),
                                            fontSize: 15.sp),
                                        weekendStyle: TextStyle(
                                            fontFamily: 'Open Sans',
                                            color: AppColors.whiteColor.withOpacity(0.2),
                                            fontSize: 15.sp),
                                      ),
                                      calendarStyle: const CalendarStyle(
                                        isTodayHighlighted: false,
                                        outsideDaysVisible: false,
                                        todayDecoration: BoxDecoration(shape: BoxShape.circle),
                                        selectedDecoration: BoxDecoration(
                                          color: Colors.transparent,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (calenderState.isYearTapped)
                            Positioned(
                              left: 140.w,
                              child: Padding(
                                padding: EdgeInsets.only(left: 11.w),
                                child: CustomGreyContainer(
                                  height: 310.h,
                                  width: 129.w,
                                  borderRadius: 12,
                                  padding: EdgeInsets.zero,
                                  child: SizedBox(
                                    height: 10.h,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          for (int i = 0; i < calenderState.years.length; i++)
                                            Padding(
                                              padding: EdgeInsets.only(top: 17.h),
                                              child: !calenderState.years[i].isSelected
                                                  ? GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          _selectedDate = DateTime(calenderState.years[i].year,
                                                              _selectedDate.month, _selectedDate.day);
                                                        });
                                                        calenderState.selectYear(i);
                                                      },
                                                      child: Text(
                                                        calenderState.years[i].year.toString(),
                                                        style: TextStyles.buttonTextWhite15,
                                                      ),
                                                    )
                                                  : MonthYearSelector(
                                                      child: Center(
                                                        child: Text(
                                                          calenderState.years[i].year.toString(),
                                                          style: TextStyles.buttonTextWhite15,
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
                          if (!calenderState.isMonthTapped && !calenderState.isYearTapped)
                            Padding(
                              padding: EdgeInsets.only(left: 11.w),
                              child: CustomGreyContainer(
                                height: 310.h,
                                width: 329.w,
                                padding: EdgeInsets.only(top: 20.h),
                                borderRadius: 10,
                                child: TableCalendar(
                                  calendarFormat: _calendarFormat,
                                  focusedDay: _selectedDate,
                                  firstDay: DateTime(1980),
                                  lastDay: DateTime(2030),
                                  headerVisible: false,
                                  rowHeight: 45.h,
                                  sixWeekMonthsEnforced: false,
                                  headerStyle: const HeaderStyle(
                                    formatButtonVisible: false,
                                  ),
                                  daysOfWeekStyle: DaysOfWeekStyle(
                                    weekdayStyle: TextStyle(
                                        fontFamily: 'Open Sans', color: AppColors.whiteColor, fontSize: 15.sp),
                                    weekendStyle: TextStyle(
                                        fontFamily: 'Open Sans', color: AppColors.whiteColor, fontSize: 15.sp),
                                    dowTextFormatter: (date, locale) => _getWeekdayLabel(date),
                                  ),
                                  calendarStyle: CalendarStyle(
                                    outsideDaysVisible: false,
                                    todayDecoration: const BoxDecoration(shape: BoxShape.circle),
                                    selectedDecoration: BoxDecoration(
                                      // color: Colors.green,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(Assets.icons.dateSelectorIcon.path),
                                      ),
                                    ),
                                    holidayTextStyle: TextStyles.buttonTextWhite15,
                                    weekendTextStyle: TextStyles.buttonTextWhite15,
                                    defaultTextStyle: TextStyles.buttonTextWhite15,
                                  ),
                                  availableGestures: AvailableGestures.all,
                                  onFormatChanged: (format) {
                                    setState(() {
                                      _calendarFormat = format;
                                    });
                                  },
                                  onPageChanged: (focusedDay) {
                                    setState(() {
                                      _selectedDate = focusedDay;
                                    });
                                  },
                                  selectedDayPredicate: (day) => isSameDay(day, _selectedDate),
                                  onDaySelected: _onDaySelection,
                                ),
                              ),
                            ),
                        ],
                      ),
                      SizedBox(
                        height: 155.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 21.w),
                        child: CustomButton(
                          buttonText: 'Next',
                          onTap: () {
                            Navigator.pushNamed(context, RouteName.userInterestScreen);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]);
          },
        ));
  }
}

// ignore: must_be_immutable
class MonthYearSelector extends StatelessWidget {
  Widget child;
  MonthYearSelector({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      width: 88.h,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            Assets.images.monthYearSelector.path,
          ),
        ),
      ),
      child: child,
    );
  }
}
