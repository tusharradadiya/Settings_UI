
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:setting/setting/settingandpage.dart';
import 'package:setting/setting/settingsiosPage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.light,
    statusBarColor: Colors.red, // status bar color
  ));
  runApp(
    Platform.isAndroid ?android():ios(),
  );
}

Widget ios() {
  return CupertinoApp(
    debugShowCheckedModeBanner: false,
    routes: {'/': (context) => SettingIosPage()},
  );
}

Widget android() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {'/': (context) => SettingAndPage()},
  );
}
