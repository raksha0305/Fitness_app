import 'package:fitness/first.dart';
import 'package:fitness/third.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Sample_Widget extends StatelessWidget {
  const Sample_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(children: [
              Container(
                  child: Image.asset(
                'assets/boxclub2.jpg',
                height: 400,
                width: 1400,
                fit: BoxFit.fill,
              )),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 200),
                child: Text(
                  ' BALDUINA\n BOXING CLUB',
                  style: GoogleFonts.bebasNeue(
                    fontSize: 50,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 350, left: 20),
                child: Container(
                  child: Image.asset(
                    'assets/logobox.png',
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 370, left: 280),
                child: Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0),
                              blurRadius: 6.0),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 23),
                      child: Center(
                          child: Row(
                        children: [
                          Text(
                            'Follow',
                            style: GoogleFonts.poppins(
                                color: Color(0xff5C2C35),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset('assets/plus.png', height: 20, width: 20)
                        ],
                      )),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120, left: 360),
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
                              builder: (_) => First_Widget(),
                            )),
                          )),
                    )),
              )
            ]),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffD8D2D7),
                        borderRadius: BorderRadius.circular(10)),
                    height: 30,
                    width: 80,
                    child: Center(
                        child: Text(
                      'Boxing',
                      style: GoogleFonts.poppins(
                          color: Color(0xff5C2C35),
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffD8D2D7),
                        borderRadius: BorderRadius.circular(10)),
                    height: 30,
                    width: 80,
                    child: Center(
                        child: Text(
                      'Fitness',
                      style: GoogleFonts.poppins(
                          color: Color(0xff5C2C35),
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/per1.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/per2.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/per3.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/per4.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '1230 members',
                    style: GoogleFonts.poppins(
                        color: Color(0xff4B281E),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100,
              child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                      backgroundColor: Colors.grey,
                      bottom: const TabBar(
                        tabs: [
                          Tab(
                            text: "Workout",
                          ),
                          Tab(
                            text: "Live Class",
                          ),
                          Tab(
                            text: "Leaderboard",
                          ),
                        ],
                      )),
                  body: const TabBarView(children: [
                    Center(
                      child: Text('Workout'),
                    ),
                    Center(
                      child: Text('Live Class'),
                    ),
                    Center(
                      child: Text('Leadership'),
                    ),
                  ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      children: [
                        // GestureDetector(
                        //     onTap: () =>
                        //         Navigator.of(context).push(MaterialPageRoute(
                        //           builder: (_) => Third_Widget(),
                        //         ))),
                        Image.asset(
                          'assets/box4.jpg',
                          height: 200,
                          width: 400,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14, top: 120),
                          child: Column(
                            children: [
                              Text(
                                'LEADING WITH THE JAB',
                                style: GoogleFonts.bebasNeue(
                                    fontSize: 25, color: Colors.white),
                              ),
                              Text(
                                '8 minutes',
                                style: GoogleFonts.bebasNeue(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w100),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 280, top: 10),
                          child: Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                'Easy',
                                style: GoogleFonts.bebasNeue(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/weight.jpg',
                      height: 150,
                      width: 400,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
