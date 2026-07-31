import 'dart:async';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Property
  late TextEditingController inputController;
  late String inputText;
  late List<String> data;
  late String text;
  late int textIndex;
  late Timer _timer;

  @override
    void initState() {
      super.initState();
      inputController = TextEditingController();
      inputText = '';
      data = [];
      text = '';
      textIndex=0;

      _timer=Timer.periodic(Duration(seconds: 1), (timer) {
          textIndex++;
          if (textIndex>=data.length){
            textIndex=0;
            text = data[textIndex];
          }else{
            text += data[textIndex];
          }
        },
      );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LED'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Text(text),
      ),
      drawer: Drawer(
        child: Center(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                  // borderRadius: BorderRadius.circular(30),
                ),
                accountName: Center(
                  child: Text(
                    '광고 문구를 입력하세요',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ), 
                accountEmail: Text(''),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                      createText();
                    }, 
                    child: Text('광고문구 생성'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void createText(){
    inputText = inputController.text.trim();
    data = inputText.split('');
    _timer;
    setState(() {});
  }
}