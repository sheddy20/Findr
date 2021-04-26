import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhapy/views/data-saver.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "DataSaver",
      defaultTransition: Transition.cupertinoDialog,
      transitionDuration: Duration(milliseconds: 50),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}
