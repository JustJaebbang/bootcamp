// 이거 오늘 무조건 끝낸다


import 'dart:async';

import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {

  // Property
  late TextEditingController inputController;
  late String inputText;
  late List<String> textData;
  late String outputText;
  late int textIndex;
  late Timer _timer;

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    inputController = TextEditingController();
    inputText = '';
    textData = [];
    textIndex = 0;
    outputText = '';

    Timer.periodic(Duration(seconds: 1), (timer) => createText(),);
  }

  void createText(){
        if(textIndex>=textData.length){
          textIndex=0;
          outputText='';
        }else{
          outputText+=textData[textIndex];
          textIndex++;
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
          children: [
            TextField(
              controller: inputController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: '글자를 입력하세요',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                printLed();
              }, 
              child: Text('광고 출력'),
            ),
            SizedBox(
              height: 200,
            ),
            Text(
              outputText,
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

  // Functions
  void printLed(){
    inputText=inputController.text.trim();
    textData=inputText.split('');
    // outputText=textData[textIndex];
    createText();
    setState(() {});
  }

}