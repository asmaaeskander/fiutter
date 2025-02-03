// ignore_for_file: depend_on_referenced_packages, prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('settings'.tr)),
      body: Center(
        child: DropdownButton<String>(
          value: Get.locale?.languageCode,
          onChanged: (String? newLang) {
            if (newLang != null) {
              Get.updateLocale(Locale(newLang));
            }
          },
          items: [
            DropdownMenuItem(value: 'en', child: Text('English')),
            DropdownMenuItem(value: 'ar', child: Text('العربية')),
          ],
        ),
      ),
    );
  }
}
