import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Property
  late String buttonText; // 버튼의 누름 저장
  late bool buttonState; // 버튼의 횟수 판단

  @override
  void initState() {
    super.initState();
    buttonText = 'OFF';
    buttonState = false;
    print('==============>>>> initState()를 구동했습니다.');
  }

  @override
  Widget build(BuildContext context) {
    print('==============>>>> build()를 구동했습니다.');
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Life Cycle'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _onClick(),
              child: Text('버튼을 누르세요'),
            ),
            Text('버튼 상태 $buttonText'),
          ],
        ),
      ),
    );
  }

  // Functions
  // Date   : 26.07.29
  // Desc.  : 버튼 상태를 OFF와 ON을 Toggle한다.
  // Author : 허재영
  void _onClick() {
    print('==============>>>> _onClick()를 구동했습니다.');
    if (buttonState==false){
    buttonText = 'ON';
    buttonState = true;
    } 
    else {
    buttonText = 'OFF';
    buttonState = false;
    }
    setState(() {});
  }
}