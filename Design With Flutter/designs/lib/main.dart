import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entry Page Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EnrtyPage(),
    );
  }
}

class EnrtyPage extends StatelessWidget {
  const EnrtyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
    );
  }
}
