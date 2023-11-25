import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'diet.dart';
import 'first.dart';
import 'leaderboard.dart';
import 'profile.dart';

class Welcome_Widget extends StatelessWidget {
  const Welcome_Widget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/fitgo.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Text(
                'Dashboard',
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  color: Color(0xff8D4A84),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 15),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: Color(0xffD096FC),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 240.0, top: 20),
                  child: Image.asset('assets/dumbell.png',
                      height: 130, fit: BoxFit.fill),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 50),
                  child: Text(
                    'Daily \nChallenge',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 140),
                  child: Text(
                    'Do your plan before 09:00 AM',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: GridView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 6,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  List<String> imagePaths = [
                    'assets/kike-vega-F2qh3yjz6Jk-unsplash.jpg',
                    'assets/diet.jpg',
                    'assets/leaderboard.png',
                    'assets/girl.jpg'
                  ];

                  List<String> titles = [
                    'Categories',
                    'Diet',
                    'Leaderboard',
                    'Profile',
                  ];

                  return GridItem(
                    imagePath: imagePaths[index],
                    title: titles[index],
                    onTap: () {
                      // Navigate to respective pages based on the index
                      switch (index) {
                        case 0:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => First_Widget(),
                            ),
                          );
                          break;
                        case 1:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => DietPage(),
                            ),
                          );
                          break;
                        case 2:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Leader_Widget(),
                            ),
                          );
                          break;
                        case 3:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Profile(),
                            ),
                          );
                          break;
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTap;

  const GridItem({
    required this.imagePath,
    required this.title,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 150,
              width: double.infinity,
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
