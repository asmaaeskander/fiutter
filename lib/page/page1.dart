
// ignore_for_file: use_super_parameters, library_private_types_in_public_api, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_app/page/home.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();
  String _result = '';

  void _calculate(String operation) {
    double num1 = double.tryParse(_num1Controller.text) ?? 0;
    double num2 = double.tryParse(_num2Controller.text) ?? 0;
    double result;

    switch (operation) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '*':
        result = num1 * num2;
        break;
      case '/':
        if (num2 != 0) {
          result = num1 / num2;
        } else {
          setState(() {
            _result = 'خطأ: القسمة على صفر!';
          });
          return;
        }
        break;
      default:
        result = 0;
    }

    setState(() {
      _result = 'النتيجة: $result';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('حاسبة '),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'ادخل الرقم الأول',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'ادخل الرقم الثاني',
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => _calculate('+'),
                  child: Text('+',style: TextStyle(color: const Color.fromARGB(255, 18, 18, 18)),),
                ),
                ElevatedButton(
                  onPressed: () => _calculate('-'),
                  child: Text('-',style: TextStyle(color: const Color.fromARGB(255, 18, 18, 18)),),
                ),
                ElevatedButton(
                  onPressed: () => _calculate('*'),
                  child: Text('*',style: TextStyle(color: const Color.fromARGB(255, 18, 18, 18)),),
                ),
                ElevatedButton(
                  onPressed: () => _calculate('/'),
                  child: Text('/',style: TextStyle(color: const Color.fromARGB(255, 18, 18, 18)),),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              _result,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}