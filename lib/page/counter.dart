// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
class MyCounter extends StatefulWidget{
  @override
  State<MyCounter> createState()=>MyCounterState();
}
class MyCounterState extends State<MyCounter>{
  int i=0;
  TextEditingController n1=TextEditingController();
  TextEditingController n2=TextEditingController();
  TextEditingController r=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Counter"),backgroundColor:Colors.red,),
      body:
      Center(child: Column(
        children: [
          TextField(
            controller: n1,
          ),
          TextField(
            controller: n2,
          ),
          Text("sum="+r.text),
        ],
      )),
      floatingActionButton:FloatingActionButton(onPressed: () {
        setState(() {});
        r.text=(int.parse(n1.text) +int.parse(n2.text)).toString();
      },child: Text("+")),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}