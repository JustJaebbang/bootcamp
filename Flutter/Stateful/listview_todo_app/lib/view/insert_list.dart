import 'package:flutter/material.dart';
import 'package:listview_todo_app/util/message.dart';

class InsertList extends StatefulWidget {
  const InsertList({super.key});

  @override
  State<InsertList> createState() => _InsertListState();
}

class _InsertListState extends State<InsertList> {
  // Property
  late TextEditingController textEditingController;
  late bool cartSwitch;
  late bool clockSwitch;
  late bool pencilSwitch;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    cartSwitch = true; // 구매 스위치
    clockSwitch = false; // 약속 스위치
    pencilSwitch = false; // 스터디 스위치
    Message.imagePath='images/cart.png'; // 이미지 초기값
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add View'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('구매  '),
                Switch(
                  value: cartSwitch, 
                  onChanged: (value) {
                    cartSwitch=value;
                    swtichNoneCheck();
                    checkSwitch(1);
                  },
                ),
                Image.asset(
                  'images/cart.png'
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('약속  '),
                Switch(
                  value: clockSwitch, 
                  onChanged: (value) {
                    clockSwitch=value;
                    swtichNoneCheck();
                    checkSwitch(2);
                  },
                ),
                Image.asset(
                  'images/clock.png'
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('스터디  '),
                Switch(
                  value: pencilSwitch, 
                  onChanged: (value) {
                    pencilSwitch=value;
                    swtichNoneCheck();
                    checkSwitch(3);
                  },
                ),
                Image.asset(
                  'images/pencil.png'
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                labelText: '목록을 입력하세요',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if(textEditingController.text.trim().isNotEmpty){
                  addList();
                }
                Navigator.pop(context);
              }, 
              child: Text('OK'),
            ),
          ],
        ),
      ),
    );
  }

  // Functions
  void addList(){
    // Message.imagePath = 'images/pencil.png';
    Message.workList = textEditingController.text.trim();
    Message.action = true;
  }

  // 이 함수는 실패
  // void checkSwitch(bool onSwitch, String imagepath){
  //   cartSwitch = false;
  //   clockSwitch = false;
  //   pencilSwitch = false;
  //   onSwitch = true;
  //   Message.imagePath = imagepath;
  //   setState(() {});
  // }

  void checkSwitch(int i){
    // if(cartSwitch==false && clockSwitch==false && pencilSwitch==false){
    //   cartSwitch=true;
    //   Message.imagePath = 'images/cart.png';
    // }
    switch(i){
      case 1: 
      cartSwitch=true;
      clockSwitch=false;
      pencilSwitch=false;
      Message.imagePath = 'images/cart.png';
      case 2: 
      cartSwitch=false;
      clockSwitch=true;
      pencilSwitch=false;
      Message.imagePath = 'images/clock.png';
      case 3: 
      cartSwitch=false;
      clockSwitch=false;
      pencilSwitch=true;
      Message.imagePath = 'images/pencil.png';
    }
    setState(() {});
  }

  void swtichNoneCheck(){
    if(cartSwitch==false && clockSwitch==false && pencilSwitch==false){
      cartSwitch=true;
      Message.imagePath = 'images/cart.png';
    }
    setState(() {});
  }
  // void checkCart(){
  //   if(cartSwitch){
  //     clockSwitch=false;
  //     pencilSwitch=false;
  //   Message.imagePath = 'images/cart.png';
  //   }
  //   setState(() {});
  // }

  // void checkClock(){
  //   if(clockSwitch){
  //     cartSwitch=false;
  //     pencilSwitch=false;
  //   Message.imagePath = 'images/clock.png';
  //   }
  //   setState(() {});
  // }

  // void checkPencil(){
  //   if(pencilSwitch){
  //     cartSwitch=false;
  //     clockSwitch=false;
  //   Message.imagePath = 'images/pencil.png';
  //   }
  //   setState(() {});
  // }
}