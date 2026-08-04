// 이거오늘 끝낸다

import 'dart:async';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Property
  late bool switchColor;    // Switch 상태
  late String imageName;    // image file name
  late double angle;        // 회전 각도
  late String swtichName;   // Switch label
  late Timer _timer;        // Timer
  late double heightSize;   // 이미지 높이
  late double widthSize;    // 이미지 넓이

  @override
  void initState() {
    super.initState();
    switchColor = false; // false==yellow , true==red
    imageName = 'images/lamp_on.png';
    angle = 0;
    swtichName = 'Yellow';
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      //
      },
    );
    heightSize = 30;
    // widthSize = 30;
  }
  
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    angle = angle > 360 ? 0 : angle;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotationTransition(
              turns: AlwaysStoppedAnimation(angle/360),
              child: Container(
                color: Colors.white,
                // width: widthSize,
                height: 500,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      imageName,
                      height: heightSize,
                      // boxfit.contain 이게 비율을 맞춰줌. 기본값
                    ),
                    Text('apple'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      angle-=10;
                      setState(() {});
                    }, 
                    child: Text('-10'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      angle+=10;
                      setState(() {});
                    }, 
                    child: Text('+10'),
                  ),
                  ElevatedButton(
                    onPressed: reset,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Reset'),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(swtichName),
                Switch(
                  value: switchColor, 
                  onChanged: (value) {
                    switchColor=value;
                    switchAction();
                  },
                ),
              ],
            ),
            SizedBox(
              width: 300,
              child: Slider(
                value: angle,
                min: 0,
                max: 360, 
                onChanged: (value) {
                  angle = value;
                  setState(() {});
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: startTimer, 
                  child: Text('Start Timer'),
                ),
                ElevatedButton(
                  onPressed: stopTimer, 
                  child: Text('Stop Timer'),
                ),
              ],
            ),
            SizedBox(
              width: 300,
              child: Slider(
                value: heightSize,
                min: 30,
                max: 400, 
                onChanged: (value) {
                  heightSize = value;
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Functions
  void reset(){
    angle = 0;
    imageName = 'images/lamp_on.png';
    swtichName = 'Yellow';
    switchColor = false;
    setState(() {});
  }

  void switchAction(){
    imageName = switchColor ? 'images/lamp_red.png' : 'images/lamp_on.png';
    swtichName = switchColor ? 'Red' : 'Yellow';
    setState(() {});
  }

  void startTimer(){
    _timer.cancel();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      angle++;
      setState(() {});
      },
    );
  }

  void stopTimer(){
    _timer.cancel();
    reset();
  }
}