
// ignore_for_file: use_key_in_widget_constructors, override_on_non_overriding_member, use_super_parameters, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_app/page/home.dart';

 class Page2 extends StatelessWidget {

  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return MaterialApp(

debugShowCheckedModeBanner: false,
   home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'hello',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}