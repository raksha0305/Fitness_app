import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class Slider_Test extends StatelessWidget {
  const Slider_Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Carousel Slider'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 05,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Recommended',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.pink[800],
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
                items: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                          'assets/kike-vega-F2qh3yjz6Jk-unsplash.jpg',
                          fit: BoxFit.cover)),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                          'assets/jannis-brandt-mmsQUgMLqUo-unsplash.jpg',
                          fit: BoxFit.cover)),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                          'assets/venti-views-I1EWTM5mFEM-unsplash.jpg',
                          fit: BoxFit.cover)),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                          'assets/victor-freitas-hOuJYX2K5DA-unsplash.jpg',
                          fit: BoxFit.cover))
                ],
                options: CarouselOptions(
                  height: 300,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.bounceIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                )),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Personalized',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.pink[800],
                  )),
            ),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Stack(
                        children: [
                          Container(
                            color: Colors.amber,
                            height: 300,
                            width: 300,
                            child: Image.asset(
                                'assets/slider/olga-nayda-3TQ8I-sR9a8-unsplash.jpg',
                                fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 200, left: 10),
                            child: Text(
                              'My Health',
                              style: GoogleFonts.aclonica(
                                  color: Colors.white, fontSize: 25),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 230, left: 10),
                            child: Container(
                                height: 30,
                                width: 65,
                                decoration: BoxDecoration(
                                    color: Colors.orange[400],
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    Text('Go',
                                        style: GoogleFonts.aclonica(
                                          color: Colors.red,
                                          fontSize: 20,
                                        ))
                                  ],
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        height: 200,
                        width: 300,
                        child: Image.asset(
                            'assets/slider/tyler-nix-Y1drF0Y3Oe0-unsplash.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        height: 200,
                        width: 300,
                        child: Image.asset(
                            'assets/slider/edgar-chaparro-sHfo3WOgGTU-unsplash.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        height: 200,
                        width: 300,
                        child: Image.asset(
                            'assets/slider/behnam-norouzi-hL1RC9kOLPM-unsplash.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
