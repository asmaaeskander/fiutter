// ignore_for_file: unused_import, use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_app/page/home.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 205, 224, 234),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 9, 84, 97),
          title: const Text("First App"),
        ),
        body: const Text(
          "Hello Asma",
          textDirection: TextDirection.rtl,
          style: TextStyle(
              color: Colors.black, fontSize: 34, fontWeight: FontWeight.bold),
        ),
        bottomNavigationBar: const Text(
          "Hello flutter",
          textDirection: TextDirection.rtl,
          style: TextStyle(
              color: Colors.black, fontSize: 34, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
