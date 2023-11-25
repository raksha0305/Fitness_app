import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Start1 extends StatelessWidget {
  const Start1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text(
          "Let's Get Started",
          style: GoogleFonts.poppins(
            fontSize: 25,
            color: Color(0xff1E1E1E),
            fontWeight: FontWeight.bold,
          ),    
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black,
          ),
          // Container(
          //     child: Image.asset(
          //   'assets/start1.png',
          //   height: 100,
          //   width: 100,
          // )),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff00F5D4)),
          )
        ],
      ),
    );
  }
}
