import 'package:flutter/material.dart';
import 'package:task1_updated/scholarships.dart';
import 'package:task1_updated/technews.dart';
import 'menu.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: 'menu',
      routes: {
        'menu' : (context) => MenuPage(),
        'technews' : (context) => TechNews(),
        'scholarships' : (context) => Scholarships(),
      },
    ),
  );
}