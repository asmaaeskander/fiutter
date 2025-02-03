// ignore_for_file: use_super_parameters, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_app/page/home.dart';

class Page9 extends StatelessWidget {
  const Page9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Text('Hello, World!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action when pressed
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Header')),
            ListTile(title: Text('Item 1')),
            ListTile(title: Text('Item 2')),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.blue,
        height: 50,
        child: Center(child: Text('This is a bottom sheet')),
      ),
      backgroundColor: Colors.grey[200],
      resizeToAvoidBottomInset: true,
      persistentFooterButtons: [
        ElevatedButton(onPressed: () {}, child: Text('Button 1')),
        ElevatedButton(onPressed: () {}, child: Text('Button 2')),
      ],
      drawerScrimColor: Colors.black54,
    );
  }
}
