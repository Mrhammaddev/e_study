import 'package:e_study/detail_screen.dart';
import 'package:e_study/views/Home/bottomnav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'e-study',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomPage(),
    );
  }
}
