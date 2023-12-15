import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
// import 'screens/listview_screen.dart';
// import 'screens/design_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Main', 
      debugShowCheckedModeBanner: false, 
      home: HomeScreen());
    }
}
