import 'package:fitness/first.dart';
import 'package:fitness/welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_Widget extends StatelessWidget {
  const Home_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff231F20),
        body: Stack(
          children: [
            Center(
              child: Container(
                height: 100,
                // width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/fitgo.png"), fit: BoxFit.fill),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 330),
              child: Icon(
                Icons.settings,
                color: Colors.white,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 280.0),
              child: Icon(
                Icons.notifications,
                size: 30,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 230.0),
              child: Icon(
                Icons.person_rounded,
                size: 30,
                color: Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => Welcome_Widget(),
              )),
              child: Padding(
                padding: const EdgeInsets.only(left: 80, top: 550),
                child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Color(0xff8D4A84),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text(
                      'Get Started',
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ))),
              ),
            )
          ],
        ));
  }
}
