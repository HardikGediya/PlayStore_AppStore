import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcaster3rd_pro/screens/cupertino_screens/pages/apps_screen.dart';
import 'package:outcaster3rd_pro/screens/cupertino_screens/pages/games_screen.dart';
import 'package:outcaster3rd_pro/screens/cupertino_screens/pages/today_screen.dart';

import '../../utils/var.dart';

class CupertinoHomeScreen extends StatefulWidget {
  const CupertinoHomeScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoHomeScreen> createState() => _CupertinoHomeScreenState();
}

class _CupertinoHomeScreenState extends State<CupertinoHomeScreen> {
  List<Widget> data = const [
    TodayScreen(),
    GamesScreen(),
    AppsScreen(),
    Center(
      child: Text('Updates Page',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    ),
    Center(
      child: Text('Search Page',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        height: 70,
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(CupertinoIcons.today),
            icon: Icon(CupertinoIcons.today_fill),
            label: "Today",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(CupertinoIcons.rocket_fill),
            icon: Icon(CupertinoIcons.rocket),
            label: "Games",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(CupertinoIcons.app_fill),
            icon: Icon(CupertinoIcons.app),
            label: "Apps",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(CupertinoIcons.arrow_down_doc_fill),
            icon: Icon(CupertinoIcons.arrow_down_doc),
            label: "Updates",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(CupertinoIcons.search),
            icon: Icon(CupertinoIcons.search),
            label: "Serach",
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return data[index];
          },
        );
      },
    );
  }
}
