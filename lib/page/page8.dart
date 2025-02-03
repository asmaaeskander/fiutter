// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

void main() {
  runApp(const quiz());
}
class quiz extends StatefulWidget {
  const quiz({super.key});

  @override
  State<quiz> createState() => _quizState();
}

class _quizState extends State<quiz> {
  int f=1;
  TextEditingController fact=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:Scaffold(
    appBar:AppBar(),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
        TextField(
          controller: fact ,
        ),
        Text("data"),
        Text(f.toString()),
        ElevatedButton(onPressed: (){
        setState((){

    });

          for(int i=1;i<=int.parse(fact.text);i++)
            f*=i;  
        }
            , child: Text("fact"))

      ]),),);
  }
}