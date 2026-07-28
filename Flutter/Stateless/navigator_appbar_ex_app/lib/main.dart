import 'package:flutter/material.dart';
import 'package:navigator_appbar_ex_app/view/receivedmail.dart';
import 'package:navigator_appbar_ex_app/view/sendmail.dart';
import 'view/home.dart';

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
        '/SendMail' : (context) => SendMail(),
        '/ReceivedMail' : (context) => ReceivedMail(),
      },
      initialRoute: '/',
    );
  }
}
