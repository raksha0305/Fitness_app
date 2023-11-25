import 'package:flutter/material.dart';

class Grid_List extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {'title': 'Profile', 'imageUrl': 'assets/slider/pro.png'},
    {'title': 'Time', 'imageUrl': 'assets/slider/timer.png'},
    {'title': 'Schedule', 'imageUrl': 'assets/slider/calendar.png'},
    {'title': 'Favourites', 'imageUrl': 'assets/slider/astronaut.jpg'},
    // {'title': 'Item 5', 'imageUrl': 'assets/per4.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 10.0, mainAxisSpacing: 8.0),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Column(children: <Widget>[
            Image.asset(
              items[index]['imageUrl'],
              fit: BoxFit.cover,
              height: 100.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                items[index]['title'],
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ]),
        );
      },
    ));
  }
}
