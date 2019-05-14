import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;
import 'SharedAssets.dart';

class NavigationBar extends StatefulWidget {
  @override
  NavigationBarState createState() => new NavigationBarState();
}

class NavigationBarState extends State<NavigationBar> {
  int _currentIndex = 1; // Default is events page

  void _selectLayout(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  static const _navigationItemsList = <BottomNavigationBarItem> [
    BottomNavigationBarItem(
      icon: Icon(Icons.contacts), title: Text('Members'),

    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.calendar_today), title: Text('Events')),
    BottomNavigationBarItem(
        icon: Icon(Icons.account_circle), title: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoTabBar(
        currentIndex: _currentIndex,
        onTap: _selectLayout,
        activeColor: SharedAssets.gsuBlue,
        items: _navigationItemsList,
      );
    }

    return BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _selectLayout,
        fixedColor: SharedAssets.gsuBlue,
        type: BottomNavigationBarType.fixed,
        items: _navigationItemsList,
    );
  }

}