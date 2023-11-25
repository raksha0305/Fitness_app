import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'slider.dart';

class Animation_Widget extends StatefulWidget {
  const Animation_Widget({super.key});

  @override
  State<Animation_Widget> createState() => _Animation_WidgetState();
}

class _Animation_WidgetState extends State<Animation_Widget> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Slider_Test()));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: ListView(children: [
          Lottie.asset('assets/cooking.json'),
          SizedBox(
            height: 20,
          ),
          Center(
            child: LoadingAnimationWidget.twoRotatingArc(
              color: Colors.black,
              size: 50,
            ),
          ),
        ])));
  }
}
