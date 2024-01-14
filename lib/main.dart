import 'package:clima_cast/ui/get_started.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ClimaCast",
      home: GetStarted(),
      debugShowCheckedModeBanner: false,
    );
  }
}
