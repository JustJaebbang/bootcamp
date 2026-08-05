import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro_app/home.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  // Property
  // ?? -> 들어온게 null이면 "__"로 대체하겠다
  var value = Get.arguments ?? "__";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.back(), 
              child: Text('Exit'),
            ),
            Text(
              'Single Argument : $value'
            ),
            Text(
              'Multiple Argument #1 : ${value[0]}'
            ),
            Text(
              'Multiple Argument #2 : ${value[1]}'
            ),
            ElevatedButton(
              onPressed: () => Get.back(result: 'Good'), 
              child: Text('Reply'),
            ),
          ],
        ),
      ),
    );
  }
}