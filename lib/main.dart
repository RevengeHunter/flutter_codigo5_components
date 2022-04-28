import 'package:flutter/material.dart';
import 'package:flutter_codigo5_components/pages/home_page.dart';
import 'package:flutter_codigo5_components/pages/practice1_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "COMPONENTS APP",
      home: HomePage(),
    );
  }
}
