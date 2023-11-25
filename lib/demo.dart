import 'package:flutter/material.dart';

class DemoTest extends StatelessWidget {
  const DemoTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 50,
          elevation: 05,
          backgroundColor: Colors.white,
          title: Image.asset(
            'assets/kf1.png',
            height: 80,
            width: 250,
          )),
    );
  }
}
