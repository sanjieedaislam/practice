import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("2 Cards in a Row"),
          centerTitle: true,
        ),
        body: GridView.count(
          crossAxisCount: 2, // 2 cards per row
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          padding: EdgeInsets.all(10),
          children: [
            buildCard("Card 1"),
            buildCard("Card 2"),
            buildCard("Card 3"),
            buildCard("Card 4"),
            buildCard("Card 5"),
            buildCard("Card 6"),
          ],
        ),
      ),
    );
  }

  // Simple card builder function
  Widget buildCard(String title) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.image, size: 50, color: Colors.blue),
          SizedBox(height: 10),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text("Description here", textAlign: TextAlign.center),
        ],
      ),
    );
  }
}