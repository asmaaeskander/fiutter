// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(Page10());
}

class Page10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App'),
            backgroundColor: Colors.blue,
            leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {}),
            actions: [
              IconButton(
                icon: Icon(Icons.info, color: Colors.black),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_vert, color: Colors.black),
                onPressed: () {},
              ),
            ],
          ),
          body: Center(
            child: Column(children: [
              SizedBox(height: 20),
              Container(
                width: 450,
                height: 70,
                color: Colors.blueAccent,
                child: Center(
                  child: Text(
                    'Material App',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                width: 450,
                height: 550,
                color: Colors.lightBlue[100],
                child: Center(
                  child: Text(
                    'A convenience widget that wraps a number \nof widgets that are '
                    'commonly required for applications implementing Material Design.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ]),
          )),
    );
  }
}
