import 'package:flutter/material.dart';

class News_Event {
  late final String img;
  late final String title;
  late final String icon1;
  late final String txt_date;
  late final String icon2;
  late final String txt_time;
  late final String description;

  News_Event(
      {required this.img,
        required this.title,
        required this.icon1,
        required this.txt_date,
        required this.icon2,
        required this.txt_time,
        required this.description});
}