import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'welcome.dart';

class DietPage extends StatelessWidget {
  const DietPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => Welcome_Widget(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          'Diet',
          style: GoogleFonts.poppins(
            fontSize: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20.0, top: 20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: 6, // 2 columns * 3 rows = 6 items
          itemBuilder: (context, index) {
            List<String> imagePaths = [
              'assets/diet_image1.jpg',
              'assets/diet_image2.jpg',
              'assets/diet_image3.jpg',
              'assets/diet_image4.jpg',
              'assets/diet_image5.jpg',
              'assets/diet_image6.jpg',
            ];
            return ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagePaths[index],
                fit: BoxFit.cover,
                height: 150,
                width: double.infinity,
              ),
            );
          },
        ),
      ),
    );
  }
}
