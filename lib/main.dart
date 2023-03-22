import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Home.dart';
import 'Splash_Screen.dart';
import 'localeString.dart';

void main() => runApp(new GetMaterialApp(
      home: new Splash_Screen(),
      translations: LocaleString(),
      locale: Locale('km', 'KH'),
      debugShowCheckedModeBanner: false,
    ));
