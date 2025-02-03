import 'package:flutter/material.dart';

void main() {
  runApp(Page11());
}

class Page11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sample title',
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Sample title')),
          backgroundColor: Colors.red,
          leading: IconButton(icon: Icon(Icons.face), onPressed: () {}),
          actions: [
            IconButton(icon: Icon(Icons.bike_scooter), onPressed: () {}),
            IconButton(icon: Icon(Icons.directions_bus), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
        body: Center(
          child: Text(
            'Hello',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
