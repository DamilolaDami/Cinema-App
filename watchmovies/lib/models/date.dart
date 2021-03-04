import 'package:flutter/material.dart';

class DateContent {
  final String date;
  final String day;
  final String time;
  final String color;
  DateContent({this.color, this.time, this.date, this.day});
}

List content = [
  DateContent(day: 'Mon', date: '11', time: '10:30AM'),
  DateContent(
    day: 'Tue',
    date: '12',
    time: '11:00AM',
    color: 'thedate',
  ),
  DateContent(day: 'Wed', date: '13', time: '12:30PM'),
  DateContent(
    day: 'Thu',
    date: '14',
    time: '01:25PM',
  ),
  DateContent(day: 'Fri', date: '15', time: '03:40Pm'),
  DateContent(day: 'Sat', date: '16', time: '04:10PM'),
  DateContent(day: 'Sun', date: '16', time: '06:19PM'),
];
