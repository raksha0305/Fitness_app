import 'package:flutter/material.dart';

class Leader_Widget extends StatelessWidget {
  const Leader_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1000,
        child: Image.asset(
          'assets/leader.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
