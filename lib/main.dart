import 'package:flutter/material.dart';
import 'package:testapp/views/pages/welcomesPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Romany',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomesPage(),
    );
  }
}
