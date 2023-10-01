import 'package:azapp/models/user/calendar_entity.dart';
import 'package:flutter/material.dart';

class CalenderProvider extends ChangeNotifier {
  bool isYearTapped = false;
  bool isMonthTapped = false;

  List<MonthEntity> months = [
    MonthEntity(month: 'January', isSelected: false),
    MonthEntity(month: 'February', isSelected: true),
    MonthEntity(month: 'March', isSelected: false),
    MonthEntity(month: 'April', isSelected: false),
    MonthEntity(month: 'May', isSelected: false),
    MonthEntity(month: 'June', isSelected: false),
    MonthEntity(month: 'July', isSelected: false),
    MonthEntity(month: 'August', isSelected: false),
    MonthEntity(month: 'September', isSelected: false),
    MonthEntity(month: 'October', isSelected: false),
    MonthEntity(month: 'November', isSelected: false),
    MonthEntity(month: 'December', isSelected: false),
  ];
  List<YearEntity> years = [
    YearEntity(year: 1990, isSelected: false),
    YearEntity(year: 1991, isSelected: false),
    YearEntity(year: 1992, isSelected: false),
    YearEntity(year: 1993, isSelected: false),
    YearEntity(year: 1994, isSelected: false),
    YearEntity(year: 1995, isSelected: false),
    YearEntity(year: 1996, isSelected: false),
    YearEntity(year: 1997, isSelected: false),
    YearEntity(year: 1998, isSelected: false),
    YearEntity(year: 1999, isSelected: false),
    YearEntity(year: 2001, isSelected: false),
    YearEntity(year: 2002, isSelected: false),
    YearEntity(year: 2003, isSelected: false),
    YearEntity(year: 2004, isSelected: false),
    YearEntity(year: 2005, isSelected: false),
    YearEntity(year: 2006, isSelected: false),
    YearEntity(year: 2007, isSelected: false),
    YearEntity(year: 2008, isSelected: false),
    YearEntity(year: 2009, isSelected: false),
    YearEntity(year: 2010, isSelected: false),
    YearEntity(year: 2011, isSelected: false),
    YearEntity(year: 2012, isSelected: false),
    YearEntity(year: 2013, isSelected: false),
    YearEntity(year: 2014, isSelected: false),
    YearEntity(year: 2015, isSelected: false),
    YearEntity(year: 2016, isSelected: false),
    YearEntity(year: 2017, isSelected: false),
    YearEntity(year: 2018, isSelected: false),
    YearEntity(year: 2019, isSelected: false),
    YearEntity(year: 2020, isSelected: false),
    YearEntity(year: 2021, isSelected: false),
    YearEntity(year: 2022, isSelected: false),
    YearEntity(year: 2023, isSelected: false),
  ];

  void openClosePopupMonth() {
    isMonthTapped = !isMonthTapped;
    isYearTapped = false;
    notifyListeners();
  }

  void openClosePopupYear() {
    isMonthTapped = false;
    isYearTapped = !isYearTapped;
    notifyListeners();
  }

//Months
  void selectMonth(int index) {
    for (int i = 0; i < months.length; i++) {
      months[i].isSelected = false;
    }
    months[index].isSelected = true;
    openClosePopupMonth();
    notifyListeners();
  }

  void selectYear(int index) {
    for (int i = 0; i < years.length; i++) {
      years[i].isSelected = false;
    }
    years[index].isSelected = true;
    openClosePopupYear();
    notifyListeners();
  }
}
