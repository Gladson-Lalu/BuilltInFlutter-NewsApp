import 'package:flutter/material.dart';
import 'package:news/screen/profile.dart';
import 'config/themes/themes.dart';
import 'screen/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: themes(),
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}