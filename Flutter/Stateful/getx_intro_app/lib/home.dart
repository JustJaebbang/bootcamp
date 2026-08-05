import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro_app/second_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Navigation'),
            ElevatedButton(
              onPressed: () => Get.to(SecondPage()), 
              child: Text("Get.to() : 화면이동"),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed('/third'), 
              child: Text('Get.toNamed() : 화면이동'),
            ),
            Divider(
              thickness: 3,
              color: Colors.black,
            ),
            Text('Snack Bar'),
            ElevatedButton(
              onPressed: () => buttonSnack(), 
              child: Text('SnackBar'),
            ),
            Divider(
              thickness: 3,
              color: Colors.black,
            ),
            Text('Dialog'),
            ElevatedButton(
              onPressed: () => buttonDialog(), 
              child: Text('Dialog'),
            ),
            Divider(
              thickness: 3,
              color: Colors.black,
            ),
            Text('Bottom Sheet'),
            ElevatedButton(
              onPressed: () => buttonBottomSheet(), 
              child: Text('Bottom Sheet'),
            ),
            Divider(
              thickness: 3,
              color: Colors.black,
            ),
            Text('Screen Transition'),// 효과
            ElevatedButton(
              onPressed: () {
                Get.to(
                  SecondPage(),
                  transition: Transition.circularReveal,
                  duration: Duration(seconds: 3),
                );
              }, 
              child: Text('Screen Transition : Get.to()'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/third2');
              }, 
              child: Text('Screen Transition : Get.toNamed()'),
            ),
            Divider(
              thickness: 3,
              color: Colors.black,
            ),
            Text('Navigation & Arguments'),
            ElevatedButton(
              onPressed: () => Get.to(
                                  SecondPage(),
                                  arguments: 'First',
              ), 
              child: Text('Get.to() : Single Data'),
            ),
            ElevatedButton(
              onPressed: () => Get.to(
                                  SecondPage(),
                                    arguments: [
                                      'First',
                                      'Second',
                                    ],
              ), 
              child: Text('Get.to() : Multiple Data'),
            ),
            ElevatedButton(
              onPressed: () async{
                var returnValue = await Get.to(SecondPage());
                Get.snackbar('Return Value', returnValue);
              }, // await -> Get.to 가 죽을 때까지 기다려라
              child: Text('Get.to() : Return Argument'),
            ),
          ],
        ),
      ),
    );
  }

  // Functions
  void buttonSnack(){
    Get.snackbar(
      'SnackBar', // Title
      "Message", // Message
      snackPosition: SnackPosition.TOP, // Bottom
      duration: Duration(seconds: 2),
      backgroundColor: Colors.red,
      colorText: Colors.white,
    );
  }

  
  void buttonDialog(){
    Get.defaultDialog(
      title: 'Dialog',
      middleText: 'Message',
      barrierDismissible: false,
      backgroundColor: Colors.amber[100],
      actions: [
        TextButton(
          onPressed: () => Get.back(), 
          child: Text('Exit'),
        ),
      ],
    );
  }

  void buttonBottomSheet(){
    Get.bottomSheet(
      Container(
        width: 500,
        height: 300,
        color: Colors.amberAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Text Line 1'),
            Text('Text Line 2'),
            ElevatedButton(
              onPressed: () => Get.back(), 
              child: Text('Exis'),
            ),
          ],
        ),
      )
    );
  }
}