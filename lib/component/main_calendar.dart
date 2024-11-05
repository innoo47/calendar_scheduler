import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:calendar_scheduler/const/colors.dart';

class MainCalendar extends StatelessWidget {
  final OnDaySelected onDaySelected;
  final DateTime selectedDate;

  const MainCalendar(
      {super.key, required this.onDaySelected, required this.selectedDate});

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      locale: 'ko_kr',
      // 날짜 선택시 호출되는 함수
      onDaySelected: onDaySelected,
      // 선택된 날짜를 구분할 로직
      selectedDayPredicate: (date) =>
          date.year == selectedDate.year &&
          date.month == selectedDate.month &&
          date.day == selectedDate.day,
      firstDay: DateTime(1800, 1, 1),
      lastDay: DateTime(3000, 1, 1),
      focusedDay: DateTime.now(),
      // 헤더 스타일
      headerStyle: HeaderStyle(
        titleCentered: true,
        formatButtonVisible: false,
        titleTextStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      // 캘린더 스타일
      calendarStyle: CalendarStyle(
        isTodayHighlighted: false,
        // 기본 날짜 스타일
        defaultDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: LIGHT_GREY_COLOR,
        ),
        // 주말 날짜 스타일
        weekendDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: LIGHT_GREY_COLOR,
        ),
        // 선택된 날짜 스타일
        selectedDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: PRIMARY_COLOR,
            width: 1,
          ),
        ),
        // 기본 글꼴
        defaultTextStyle: TextStyle(
          color: DARK_GREY_COLOR,
          fontWeight: FontWeight.w600,
        ),
        // 주말 글꼴
        weekendTextStyle: TextStyle(
          color: DARK_GREY_COLOR,
          fontWeight: FontWeight.w600,
        ),
        // 선택된 날짜 글꼴
        selectedTextStyle: TextStyle(
          color: PRIMARY_COLOR,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
