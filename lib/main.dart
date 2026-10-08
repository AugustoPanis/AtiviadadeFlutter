import 'package:aplicandoatividade/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Service/ControllerBinding.dart';

void main() {
  ControllerBinding().dependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),

      home: const Home(
        title: 'Flutter Demo Home Page',
      ),
    );
  }
}