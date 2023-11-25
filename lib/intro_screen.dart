import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Intro_Screen extends StatelessWidget {
  const Intro_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/kf2.png',
              height: 300,
              width: 300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: LoadingAnimationWidget.twoRotatingArc(
              color: Colors.white,
              size: 50,
            ),
          ),
        ],
      ),
    );
  }
}
