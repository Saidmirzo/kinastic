import 'package:flutter/material.dart';
import 'package:kinastic/presentation/pages/main/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Kinastic App',
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
