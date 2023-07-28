import 'package:flutter/material.dart';
import 'package:outlay/pages/home.dart';
import 'package:outlay/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Outlay',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        brightness: Brightness.light,
        primaryColor: AppColors.kColorPrimary,
      ),
      home: Home(),
    );
  }
}
