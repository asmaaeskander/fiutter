// ignore_for_file: use_super_parameters, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/page/min.dart';
import 'package:flutter_app/page/mina.dart';
import 'package:flutter_app/page/page1.dart';
import 'package:flutter_app/page/page10.dart';
import 'package:flutter_app/page/page11.dart';
import 'package:flutter_app/page/page2.dart';
import 'package:flutter_app/page/page3.dart';
import 'package:flutter_app/page/page4.dart';
import 'package:flutter_app/page/page5.dart';
import 'package:flutter_app/page/page6.dart';
import 'package:flutter_app/page/page7.dart';
import 'package:flutter_app/page/page8.dart';
import 'package:flutter_app/page/page9.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Drive',
      home: Scaffold(
        appBar: AppBar(title: Text('Google Drive')),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Text(
                "Google Drive",
                style: TextStyle(
                    fontSize: 30.0,
                    color: const Color.fromARGB(255, 13, 13, 13),
                    fontWeight: FontWeight.w100),
              ),

              Divider(),
              ListTile(
                leading: Icon(Icons.schedule),
                title: Text(' الاحدث'),
                onTap: () {
                  // حدث عند النقر
                },
              ),
              // Divider(),
              ListTile(
                leading: Icon(Icons.offline_share),
                title: Text('بلا اتصال بالانترنت'),
                onTap: () {
                  // حدث عند النقر
                },
              ),

              ListTile(
                leading: Icon(Icons.delete),
                title: Text('  المهملات '),
                onTap: () {
                  // حدث عند النقر
                },
              ),

              ListTile(
                leading: Icon(Icons.warning),
                title: Text('محتوى غير مرغوب فيه'),
                onTap: () {
                  // حدث عند النقر
                },
              ),

              ListTile(
                leading: Icon(Icons.backup),
                title: Text(' النسخ الاحتياطية'),
                onTap: () {
                  // حدث عند النقر
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('الإعدادات'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('المساعدة والملاحظات'),
                onTap: () {
                  // حدث عند النقر
                },
              ),
              ListTile(
                leading: Icon(Icons.cloud),
                title: Text('مساحة تخزين'),
                onTap: () {
                  // حدث عند النقر
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.folder_copy),
                title: Text(' نشاط'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page1(),
                    ),
                  );
                },
              ),

              ListTile(
                leading: Icon(Icons.folder_copy),
                title: Text(' نشاط'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page2(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.folder_copy),
                title: Text('نشاط '),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page3(),
                    ),
                  );
                },
              ),

              ListTile(
                leading: Icon(Icons.folder_copy),
                title: Text('نشاط '),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page4(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.folder_copy),
                title: Text('نشاط '),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page5(),
                    ),
                  );
                },
              ),

              ListTile(
                leading: Icon(Icons.folder_copy),
                title: Text(' نشاط'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page6(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.folder_copy),
                title: Text('نشاط '),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page7(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.folder_copy),
                title: Text('نشاط '),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => quiz(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.folder_copy),
                title: Text(' نشاط'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page9(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.folder_copy),
                title: Text('نشاط '),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page10(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.folder_copy),
                title: Text('نشاط'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page11(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.folder_copy),
                title: Text('نشاط'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => page12(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.folder_copy),
                title: Text('نشاط'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page13(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Text('المحتوى الرئيسي'),
        ),
      ),
    );
  }
}
