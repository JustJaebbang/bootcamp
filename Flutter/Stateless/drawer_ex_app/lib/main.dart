import 'package:drawer_ex_app/view/mail.dart';
import 'package:drawer_ex_app/view/received.dart';
import 'package:drawer_ex_app/view/send.dart';
import 'package:flutter/material.dart';

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
        '/' :(context) => Mail(),
        '/send' :(context) => Send(),
        '/received' :(context) => Received(),
      },
      initialRoute: '/',
    );
  }
}
