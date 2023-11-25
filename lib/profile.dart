import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'welcome.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Profile',
            style: GoogleFonts.roboto(
                color: Colors.black, fontWeight: FontWeight.bold)),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => Welcome_Widget(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.settings,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/per1.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(90)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 82.0),
                        child: Text(
                          'Sandra Glam',
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Text(
                        'Denmark,Copenhagen',
                        style: GoogleFonts.roboto(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Follow',
                        style: GoogleFonts.ebGaramond(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Text(
                          '72',
                          style: GoogleFonts.ebGaramond(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        'Followers',
                        style: GoogleFonts.ebGaramond(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40.0),
                        child: Text(
                          '162',
                          style: GoogleFonts.ebGaramond(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[100]),
                      child: Center(child: Image.asset('assets/share.png')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[100]),
                      child: Center(child: Image.asset('assets/edit.png')),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Color(0xffA1E7B0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: [
                            Text(
                              'Start weight',
                              style: GoogleFonts.ebGaramond(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '53.3 kg',
                              style: GoogleFonts.ebGaramond(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xff4AFEEF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Column(
                            children: [
                              Text(
                                'Goal',
                                style: GoogleFonts.ebGaramond(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '50.0 kg',
                                style: GoogleFonts.ebGaramond(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 100,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Color(0xffFFB805),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: [
                            Text(
                              'Daily calories',
                              style: GoogleFonts.ebGaramond(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '740 kcal',
                              style: GoogleFonts.ebGaramond(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    height: 80,
                    width: 380,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0),
                              blurRadius: 6.0),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 19),
                    child: Row(
                      children: [
                        Image.asset('assets/target.png',
                            height: 40, width: 40, fit: BoxFit.fill),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Column(
                            children: [
                              Text('Physical activity',
                                  style: GoogleFonts.lato(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(right: 68),
                                child: Text('2 days ago',
                                    style: GoogleFonts.lato(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                    )),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 120.0),
                          child: Image.asset('assets/right-chevron.png'),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Stack(
                children: [
                  Container(
                    height: 80,
                    width: 380,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0),
                              blurRadius: 6.0),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 19),
                    child: Row(
                      children: [
                        Image.asset('assets/chart.png',
                            height: 40, width: 40, fit: BoxFit.fill),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 70),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 100.0),
                                child: Text('Statistics',
                                    style: GoogleFonts.lato(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 68),
                                child: Text('This year: 109 km',
                                    style: GoogleFonts.lato(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                    )),
                              )
                            ],
                          ),
                        ),
                        Center(child: Image.asset('assets/right-chevron.png')),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Stack(
                children: [
                  Container(
                    height: 80,
                    width: 380,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0),
                              blurRadius: 6.0),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 19),
                    child: Row(
                      children: [
                        Image.asset('assets/route.png',
                            height: 40, width: 40, fit: BoxFit.fill),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, right: 60),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 12.0),
                                child: Text('Routes',
                                    style: GoogleFonts.lato(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 60, left: 8),
                                child: Text('7',
                                    style: GoogleFonts.lato(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                    )),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 120.0),
                          child: Image.asset('assets/right-chevron.png'),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Stack(
                children: [
                  Container(
                    height: 80,
                    width: 380,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0),
                              blurRadius: 6.0),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 19),
                    child: Row(
                      children: [
                        Image.asset('assets/trophy.png',
                            height: 40, width: 40, fit: BoxFit.fill),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 38.0),
                                child: Text('Best time',
                                    style: GoogleFonts.lato(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 65),
                                child: Text('Show all',
                                    style: GoogleFonts.lato(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                    )),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 140.0),
                          child: Image.asset('assets/right-chevron.png'),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Stack(
                children: [
                  Container(
                    height: 80,
                    width: 380,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0),
                              blurRadius: 6.0),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 19),
                    child: Row(
                      children: [
                        Image.asset('assets/gym.png',
                            height: 40, width: 40, fit: BoxFit.fill),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 170.0),
                                child: Text('Equipment',
                                    style: GoogleFonts.lato(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 75),
                                child: Text('Nike Pegasus 3000:130.4 km ',
                                    style: GoogleFonts.lato(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                    )),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: Image.asset('assets/right-chevron.png'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
