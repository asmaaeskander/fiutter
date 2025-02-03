// ignore_for_file: prefer_const_constructors, sort_child_properties_last, curly_braces_in_flow_control_structures, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_app/page/counter.dart';


void main() {
  runApp( page12());
}

class page12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 6, 4, 8)),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> students = ["samar", "samar","samar"];

  TextEditingController name =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 18, 112, 117),
          title:IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyCounter(),));
          }, icon: Icon(Icons.pages)) ,
        ),
        body: Column(
          children: [
            Expanded(
              child:  Container(
                margin: EdgeInsets.all(5),
                child: TextField(
                  controller:name ,
                  decoration: InputDecoration(
                      hintText: "input your name:",
                      border: OutlineInputBorder()
                  ),
                ),
              ), flex:1,),
            ElevatedButton(onPressed: () {
              if(name.text.isNotEmpty&&!students.contains(name.text))
                students.add( name.text);
              else {
                showDialog(context: context, builder: (context) {
                  return Dialog(
                    child:  Text("ادخل قيمة لوسمحت"),
                  );
                },);

              }
              name.clear();
              setState(() {

              });
            }, child: Text("add")
            ),
            Expanded(
                flex: 8,
                child: ListView.builder(
                  itemCount: students.length,
                  itemBuilder: (context, i) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 2),
                      child: ListTile(
                        onTap: () {
                          name.text=students[i];
                        },

                        title: Text(students[i],textAlign:TextAlign.center ),
                        tileColor: Colors.amber,
                        leading:IconButton(onPressed: () {
                          if(name.text.isNotEmpty)
                            students[i]=name.text;
                          else ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ادخل قيمة لوسمحت")));

                          name.clear();
                          setState(() {

                          });

                        }, icon: Icon(Icons.edit)) ,
                        trailing:GestureDetector(onTap: () {
                          setState(() {

                          });
                          students.removeAt(i);
                        },child: Icon(Icons.delete,color: Colors.red,)),
                      ),
                    );
                  },))
          ],
        )
    );
  }
}






