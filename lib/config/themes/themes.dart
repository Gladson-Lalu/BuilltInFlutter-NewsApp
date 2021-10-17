import 'package:flutter/material.dart';

ThemeData themes() {
  return ThemeData(
      primaryColor: Colors.grey[100],
      scaffoldBackgroundColor: Colors.white,
      textTheme: const TextTheme(
        headline4: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 28, color: Colors.black),
        headline6: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
        bodyText1: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,),
      ));
}
