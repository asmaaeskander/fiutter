// ignore_for_file: unused_import, use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_app/page/home.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          title: const Text("السيرة الذاتية"),
          centerTitle: true,
          backgroundColor: Colors.pink,
          titleTextStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),
        ),

        body:
        Center(
          child: Container(
            child: Text("الاسم: عصماء احمد اسكندر:25 \nالجنسية: اليمنية\n التخصص: تقنية معلومات\n المستوى: بكالوريوس\n :الاعمال السابقة\n.......-1\n .......-2\n  .......-3\n  :المهارات\n ........-1\n ........-2\n  ......-3\n",textAlign: TextAlign.right,
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold
              ),
            ),

            height: 700,
            width: 370,
            color: Colors.pink,
          ),
        )
    ),
  );
}}


