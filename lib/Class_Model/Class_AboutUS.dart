import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';
import 'package:gridview_builder/Guest_Dashboard/About_US/President_Message.dart';
import 'package:gridview_builder/Guest_Dashboard/About_US/Recognition.dart';
import 'package:gridview_builder/Guest_Dashboard/About_US/Stucture.dart';
import 'package:gridview_builder/Guest_Dashboard/About_US/Vision.dart';
import '/Guest_Dashboard/About_US/History.dart';

class AboutUS{
  late final String img;
  late final String text;
  late final Widget screen;

  AboutUS({required this.img, required this.text, required this.screen});
}

List<AboutUS> aboutUS=[
  AboutUS(
      img: 'assets/image/AUS_History.png',
      text: 'ប្រវត្តិ និងអត្ថន័យរបស់និមិត្តសញ្ញា',
      screen: History()),
  AboutUS(
      img: 'assets/image/AUS_Structure.png',
      text: 'រចនាសម្ព័ន្ធរបស់សាកលវិទ្យាល័យ',
      screen: Structure()),
  AboutUS(
      img: 'assets/image/AUS_President.png',
      text: 'សាររបស់សាកលវិទ្យាធិការ',
      screen: President()),
  AboutUS(
      img: 'assets/image/AUS_Vision.png',
      text: 'ចក្ខុវិស័យ បេសកកម្ម និងគុណតម្លៃ',
      screen: Vision()),
  AboutUS(
      img: 'assets/image/AUS_Recognition.png',
      text: 'ការទទួលស្គាល់',
      screen: Recognition()),
];