import 'dart:async';

import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {

  // Property
  late List<String> str;
  late int currentcharacter;
  late String character;

  @override
  void initState() {
    super.initState();
    String data = '대한민국';
    str = data.split('');

    currentcharacter = 0;
    character = str[currentcharacter];

    Timer.periodic(Duration(seconds: 1), (timer) => changeChracter(),);
  }

  void changeChracter(){
    currentcharacter++;
    if (currentcharacter>=str.length){
      currentcharacter=0;
      character = str[currentcharacter];
    }else{
      character += str[currentcharacter];
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LED 광고'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              character,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}