import 'package:fitness/Test/grid_test.dart';
import 'package:fitness/sec2.dart';
import 'package:fitness/start1.dart';
import 'package:fitness/third.dart';
import 'package:flutter/material.dart';

import 'animation.dart';
import 'demo.dart';
import 'diet.dart';
import 'first.dart';
import 'grid_list.dart';
import 'home.dart';
import 'intro_screen.dart';
import 'leaderboard.dart';
import 'live.dart';
import 'profile.dart';
import 'sample.dart';
import 'sec.dart';
import 'second.dart';
import 'slider.dart';
import 'welcome.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
        debugShowCheckedModeBanner: false,
        builder: (context, child) => ResponsiveBreakpoints.builder(
              child: child!,
              breakpoints: [
                const Breakpoint(start: 0, end: 450, name: MOBILE),
                const Breakpoint(start: 451, end: 800, name: TABLET),
                const Breakpoint(start: 801, end: 1920, name: DESKTOP),
                const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
              ],
            ),
        // home: ForgotPasswordScreen());
        home: Home_Widget());
    // home: MS_Home());
  }
}
