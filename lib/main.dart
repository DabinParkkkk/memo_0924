import 'package:flutter/material.dart';
import 'screen/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.deepOrange, primaryColor:Colors.white),
      home: MyHomePage(title: ''),
    );
  }
}