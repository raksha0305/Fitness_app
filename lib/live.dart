import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Live_Widget extends StatelessWidget {
  const Live_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: ListView(children: [
          Lottie.asset('assets/oops.json',
              height: 800, width: 800, fit: BoxFit.fill),
        ])));
  }
}
