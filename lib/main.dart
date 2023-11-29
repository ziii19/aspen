import 'package:flutter/material.dart';
// import 'package:flutter_application_1/detailscreen.dart';
// import 'package:flutter_application_1/homescreen.dart';
import 'package:flutter_application_1/loadingscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'TravelApps', home: LoadingScreen());
  }
}
