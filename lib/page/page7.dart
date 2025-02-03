// ignore_for_file: unused_import, use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_app/page/home.dart';

class Page7 extends StatelessWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('ASMA ESKANDER'),
        ),
        body: Center(
          child: Text(
            'HELLO ASMA AHMED ESKANDER.',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 87, 171, 240),
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            semanticsLabel: 'Greeting text',
            textScaleFactor: 1.5,
            textDirection: TextDirection.rtl,
            locale: Locale('en', 'US'),
          ),
        ),
      ),
    );
  }
}
