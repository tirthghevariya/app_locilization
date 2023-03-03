import 'package:app_locilization/view/language/message.dart';
import 'package:app_locilization/view/screen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Message(),
      locale: Get.deviceLocale,
      debugShowCheckedModeBanner: false,
      fallbackLocale: const Locale('en', 'US'),
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xFF000000)),
      ),
      home: MyHomePage(),
    );
  }
}
