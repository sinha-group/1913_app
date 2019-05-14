import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;
import 'SharedAssets.dart';
import 'EventsPage.dart';

void main() => runApp(NineteenthirteenApp());

class NineteenthirteenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return MainCupertinoApp();
    } else {
      return MainMaterialApp();
    }
  }
}

class MainMaterialApp extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      title: SharedAssets.appTitle,
      theme: SharedAssets.appTheme,
      home: EventsPage(),
    );
  }
}

class MainCupertinoApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: SharedAssets.appTitle,
      color: SharedAssets.gsuGrey,
      home: EventsPage(),
    );
  }
}