import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcaster3rd_pro/screens/games_screen/pages/details_screen.dart';
import 'package:outcaster3rd_pro/screens/cupertino_screens/cupertino_home.dart';

import 'screens/home_screen/pages/home_screen.dart';
import 'utils/var.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return (isIOS)
        ? const CupertinoApp(
          theme: CupertinoThemeData(
            brightness: Brightness.light,
          ),
            debugShowCheckedModeBanner: false,
            home: CupertinoHomeScreen(),
          )
        : MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              '/': (context) => const HomeScreen(),
              'detailsScreen': (context) => const DetailsScreen(),
            },
          );
  }
}
