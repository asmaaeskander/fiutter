

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextController extends GetxController {
  RxString displayedText = "مرحبا بك في تطبيق GetX!".obs;

  void updateTextToWelcome() => displayedText.value = "مرحبًا!";
  void updateTextToGoodbye() => displayedText.value = "وداعًا!";
  void resetText() => displayedText.value = "مرحبا بك في تطبيق GetX!";
}

class TextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Text Example'),
      ),
      body: GetBuilder<TextController>(
        builder: (controller) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              controller.displayedText.value, 
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed:
                      controller.updateTextToWelcome, 
                  child: Text("مرحبًا"),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed:
                      controller.updateTextToGoodbye, 
                  child: Text("وداعًا"),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: controller.resetText,
                  child: Text("إعادة"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
