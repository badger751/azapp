import 'package:azapp/gen/assets.gen.dart';
import 'package:azapp/provider/user/calender_provider.dart';
import 'package:azapp/res/colors.dart';
import 'package:azapp/res/text_styles.dart';
import 'package:azapp/utils/route_name.dart';
import 'package:azapp/view/widgets/custom_button.dart';
import 'package:azapp/view/widgets/custom_grey_container.dart';
import 'package:azapp/view/widgets/screen_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class UserDobScreen extends StatefulWidget {
  const UserDobScreen({super.key});

  @override
  State<UserDobScreen> createState() => _UserDobScreenState();
}

class _UserDobScreenState extends State<UserDobScreen> {
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

  final List<String> _months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  List<int> _year = [];
  void year() {
    List<int> years = [];

    for (int i = 1980; i <= 2030; i++) {
      years.add(i);
    }

    setState(() {
      _year = years;
    });
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
    year();
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
                            // Expanded(
                            //   child: DropdownButtonFormField<int>(
                            //     decoration: InputDecoration(
                            //         enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                            //         focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                            //         fillColor: Colors.white.withOpacity(0.2),
                            //         focusColor: Colors.white.withOpacity(0.2),
                            //         filled: true,
                            //         border: OutlineInputBorder(borderSide: BorderSide.none)),
                            //     value: _selectedDate.year,
                            //     items: [
                            //       for (var i = 1980; i <= 2030; i++)
                            //         DropdownMenuItem<int>(
                            //           value: i,
                            //           child: Text('$i'),
                            //         ),
                            //     ],
                            // onChanged: (value) {
                            //   setState(() {
                            //     _selectedDate = DateTime(value!, _selectedDate.month, _selectedDate.day);
                            //   });
                            // },
                            //   ),
                            // ),
                            Container(
                              height: 38.h,
                              width: 129.w,
                              padding: EdgeInsets.zero,
                              decoration: BoxDecoration(
                                color: const Color(0xffD9D9D9).withOpacity(0.2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.sp),
                                ),
                              ),
                              child: PopupMenuButton<String>(
                                // clipBehavior: Clip.antiAlias,
                                initialValue: _months[_selectedDate.month - 1],
                                onSelected: (value) {
                                  setState(() {
                                    _selectedDate = DateTime(
                                      _selectedDate.year,
                                      _months.indexOf(value) + 1,
                                      _selectedDate.day,
                                    );
                                  });
                                },
                                itemBuilder: (BuildContext context) {
                                  return _months.map((String month) {
                                    return PopupMenuItem<String>(
                                      value: month,
                                      child: Text(month),
                                    );
                                  }).toList();
                                },
                                // position: PopupMenuPosition.under,
                                constraints: BoxConstraints(maxHeight: 310.h),
                                offset: Offset(0, 345.h),
                                color: AppColors.hintFontColor,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(_months[_selectedDate.month - 1],
                                          style: TextStyles.buttonTextWhite15),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Image(
                                        image: AssetImage(
                                            Assets.icons.dropDownIcon.path),
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
                            Container(
                              height: 38.h,
                              width: 129.w,
                              padding: EdgeInsets.zero,
                              decoration: BoxDecoration(
                                color: const Color(0xffD9D9D9).withOpacity(0.2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.sp),
                                ),
                              ),
                              child: PopupMenuButton<int>(
                                initialValue: _selectedDate.year,
                                color: AppColors.hintFontColor,
                                onSelected: (value) {
                                  setState(() {
                                    _selectedDate = DateTime(value,
                                        _selectedDate.month, _selectedDate.day);
                                  });
                                },
                                itemBuilder: (BuildContext context) {
                                  return _year.map((int year) {
                                    return PopupMenuItem<int>(
                                      value: year,
                                      child: Text(year.toString()),
                                    );
                                  }).toList();
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(_selectedDate.year.toString(),
                                          style: TextStyles.buttonTextWhite15),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Image(
                                        image: AssetImage(
                                            Assets.icons.dropDownIcon.path),
                                        height: 8.h,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
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
                                  fontFamily: 'Open Sans',
                                  color: AppColors.whiteColor,
                                  fontSize: 15.sp),
                              weekendStyle: TextStyle(
                                  fontFamily: 'Open Sans',
                                  color: AppColors.whiteColor,
                                  fontSize: 15.sp),
                              dowTextFormatter: (date, locale) =>
                                  _getWeekdayLabel(date),
                            ),
                            calendarStyle: CalendarStyle(
                              outsideDaysVisible: false,
                              todayDecoration:
                                  const BoxDecoration(shape: BoxShape.circle),
                              selectedDecoration: BoxDecoration(
                                // color: Colors.green,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                      Assets.icons.dateSelectorIcon.path),
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
                            selectedDayPredicate: (day) =>
                                isSameDay(day, _selectedDate),
                            onDaySelected: _onDaySelection,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 155.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 21.w),
                        child: CustomButton(
                          buttonText: 'Next',
                          onTap: () {
                            Navigator.pushNamed(
                                context, RouteName.userInterestScreen);
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
