import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/views/Gold%20View.dart';
import 'views/counter_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // GetX features (snackbars, dialogs, route navigation) ke liye GetMaterialApp zaroori hai
    return GetMaterialApp(
      title: 'GetX MVC Counter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const GoldView(),
    );
  }
}
