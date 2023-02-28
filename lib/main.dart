import 'package:flutter/material.dart';
import 'package:music/screen/home.dart';
import 'package:music/utils/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ThemeData _currentTheme = AppTheme.darkTheme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music',
      debugShowCheckedModeBanner: false,
      theme: _currentTheme,
      home: const HomePage(),
    );
  }
}
