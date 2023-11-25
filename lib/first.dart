import 'package:fitness/sec.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import 'sec2.dart';
import 'welcome.dart';

class First_Widget extends StatefulWidget {
  @override
  _First_WidgetState createState() => _First_WidgetState();
}

class _First_WidgetState extends State<First_Widget> {
  List<String> imageList = [
    'assets/boxclub2.jpg',
    'assets/morning.jpg',
    'assets/fitnessimg.jpg',
    'assets/boxing.jpg',
    'assets/liam.jpg',
    'assets/intervals.jpg',
    'assets/kike-vega-F2qh3yjz6Jk-unsplash.jpg'
  ];
  List<String> title = [
    ' KICK \n BOXING',
    'MORNING',
    'FITNESS',
    'BOXING',
    ' LIAM \n HARRISON',
    'INTERVALS',
    'EXERCISE',
  ];
  List<Widget> destinationPages = [
    Sec_Widget(),
    Sec2_Widget(),
    Sec_Widget(),
    Sec_Widget(),
    Sec_Widget(),
    Sec_Widget(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Categories',
            style: GoogleFonts.poppins(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
          ),
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
            IconButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => SearchPage(),
                    )),
                icon: const Icon(Icons.search, color: Colors.black))
          ],
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          )),
          toolbarHeight: 90,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: EdgeInsets.all(08),
            child: StaggeredGridView.countBuilder(
                crossAxisCount: 2,
                crossAxisSpacing: 05,
                mainAxisSpacing: 10,
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            child: GestureDetector(
                              onTap: () =>
                                  Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => destinationPages[index],
                              )),
                              child: Image.asset(
                                imageList[index],
                                fit: BoxFit.cover,
                              ),
                            )
                            // image: imageList[index],fit: BoxFit.cover,),
                            ),
                      ),
                      Center(
                        child: Text(
                          title[index],
                          style: GoogleFonts.bebasNeue(
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  );
                },
                staggeredTileBuilder: (index) {
                  return StaggeredTile.count(1, index.isEven ? 1.4 : 1.39);
                }),
          ),
        ),
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {},
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none),
              )))),
    );
  }
}
