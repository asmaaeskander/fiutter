// ignore_for_file: unused_import, use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_app/page/home.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Scaffold(
        appBar: AppBar(
          title: Text('Container'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(16),
              child: Text(
                'I am container',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Transform.rotate(
              angle: -0.1, // Rotate slightly
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(16),
                child: Text(
                  'Hai, I am Slanting',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            Transform.rotate(
              angle: 0.1, // Rotate slightly
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(16),
                child: Text(
                  'I am also Slanting, but see my edges',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 40), // Space between text and square
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.yellow,
                ),
                Container(
                  width: 60,
                  height: 60,
                  color: Colors.red,
                ),
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}