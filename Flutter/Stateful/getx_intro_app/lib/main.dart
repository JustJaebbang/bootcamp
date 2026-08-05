import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro_app/home.dart';
import 'package:getx_intro_app/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // <<<<<<<<<<<<<<<<<<<<<<<<<<<<
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Home(),
      getPages: [
        GetPage(
          name: '/third', 
          page: () => ThirdPage(), 
        ),
        GetPage(
          name: '/third2', 
          page: () => ThirdPage(),
          transition: Transition.cupertino,
          transitionDuration: Duration(seconds: 5), 
        ),
      ],
    );
  }
}
