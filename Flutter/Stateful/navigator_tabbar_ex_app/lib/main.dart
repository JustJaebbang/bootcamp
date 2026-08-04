import 'package:flutter/material.dart';
import 'package:navigator_tabbar_ex_app/animal.dart';
import 'package:navigator_tabbar_ex_app/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: {
        '/':(context) => Home(),
        '/animal':(context) => Animal(),
      },
      initialRoute: '/',
    );
  }
}
