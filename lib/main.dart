import 'package:fellow4U/src/pages/home_page/HomePage.dart';
import 'package:fellow4U/src/theme/AppTheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fellow4U',
      debugShowCheckedModeBanner: false,
      theme: AppTheme,
      home: HomePage(),
    );
  }
}
