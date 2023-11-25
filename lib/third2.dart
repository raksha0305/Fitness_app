import 'package:fitness/sec.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'sec2.dart';

class Third2_Widget extends StatefulWidget {
  const Third2_Widget({super.key});

  @override
  _Third2_WidgetState createState() => _Third2_WidgetState();
}

class _Third2_WidgetState extends State<Third2_Widget> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  child: Image.asset('assets/jog.jpg',
                      height: 200, width: 1400, fit: BoxFit.fill)),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 80),
                child: Text(
                  'JOGGING',
                  style: GoogleFonts.bebasNeue(
                    fontSize: 50,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 320),
                child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white38),
                    child: Center(
                      child: Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => Sec2_Widget(),
                            )),
                          )),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0, top: 170),
                child: Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0),
                          blurRadius: 6.0),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "LET'S START",
                      style: GoogleFonts.bebasNeue(
                          color: Color(0xff5C2C35),
                          fontSize: 26,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Text(
              'Every step you take is a stride toward a healthier you',
              style: GoogleFonts.poppins(
                color: Color(0xff5C2C35),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 20),
            child: Stack(
              children: [
                Container(
                  height: 70,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffDCCAE9)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text('Warm up',
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w600)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 35),
                  child: Text('4 exercises (3 minutes)',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w300)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 280.0, top: 10),
                  child: Switch(
                    value: switchValue,
                    onChanged: (value) {
                      setState(() {
                        switchValue = value;
                      });
                    },
                    activeColor: Color(0xff5C2C35),
                    inactiveTrackColor: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          if (switchValue)
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          if (switchValue)
            Padding(
              padding: const EdgeInsets.only(right: 260),
              child: Column(
                children: [
                  Text(
                    'Overview',
                    style: GoogleFonts.lato(
                        color: Color(0xff5C2C35),
                        fontSize: 19,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    'Round 1 of 5',
                    style: GoogleFonts.lato(
                        color: Color(0xff5C2C35),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          SizedBox(
            height: 20,
          ),
          if (switchValue)
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/jog.jpg',
                        height: 80,
                        width: 80,
                        fit: BoxFit.fill,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 19.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 19.0),
                          child: Text(
                            'Slow Stride',
                            style: GoogleFonts.lato(
                                color: Color(0xff5C2C35),
                                fontSize: 18,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 19.0),
                          child: Text(
                            '   10 minutes',
                            style: GoogleFonts.lato(
                                color: Color(0xff5C2C35),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100.0),
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          //new
          if (switchValue)
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          if (switchValue)
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/cross.jpg',
                        height: 80,
                        width: 80,
                        fit: BoxFit.fill,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Text(
                            'Cross-training,Strid..',
                            style: GoogleFonts.lato(
                                color: Color(0xff5C2C35),
                                fontSize: 18,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Text(
                            '10 minute (5min each)',
                            style: GoogleFonts.lato(
                                color: Color(0xff5C2C35),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0),
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          //new
          if (switchValue)
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          if (switchValue)
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/squat.jpg',
                        height: 80,
                        width: 80,
                        fit: BoxFit.fill,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Squat',
                            style: GoogleFonts.lato(
                                color: Color(0xff5C2C35),
                                fontSize: 18,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17.0),
                          child: Text(
                            '4 minutes',
                            style: GoogleFonts.lato(
                                color: Color(0xff5C2C35),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140.0),
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
