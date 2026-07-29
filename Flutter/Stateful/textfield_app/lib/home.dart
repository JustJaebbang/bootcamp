import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Property
  late TextEditingController textEditingController;
  late TextEditingController num1Controller;
  late TextEditingController num2Controller;
  late String result;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    num1Controller = TextEditingController();
    num2Controller = TextEditingController();
    result = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Single Textfield'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                labelText: '글자를 입력하세요.',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.text,
            ),
            ElevatedButton(
              onPressed: inputcheck, 
              child: Text('출력'),
            ),
            Divider(),
            TextField(
              controller: num1Controller,
              decoration: InputDecoration(
                labelText: '숫자를 입력하세요',
                border: OutlineInputBorder()
              ),
              keyboardType: TextInputType.number,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,10.0,0,10.0),
              child: TextField(
                controller: num2Controller,
                decoration: InputDecoration(
                  labelText: '숫자를 입력하세요',
                  border: OutlineInputBorder()
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
              onPressed: addAction, 
              child: Text('덧셈 계산'),
            ),
            Text(
              result,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
          ],
        ),
      ),
    );
  }


  // Functions
  void inputcheck(){
    // 입력 관리시 trim() : 입력값 좌우에 공백 삭제.
    // 잊으면안됨
    if(textEditingController.text.trim().isEmpty){
      // errorSnackBar();
      _snackBar("글자를 입력하세요",Colors.red);
    }
    else {
      // showSnackBar();
      _snackBar('입력한 글자는 ${textEditingController.text.trim()} 입니다.',Colors.blue);
    }
  }

  void _snackBar(String message, Color color){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
        backgroundColor: color,
      ), 
    );
  }

  void addAction(){
    if (num1Controller.text.trim().isNotEmpty && num2Controller.text.trim().isNotEmpty){
    int num1 = int.parse(num1Controller.text.trim());
    int num2 = int.parse(num2Controller.text.trim());
    int sum = num1+num2;

    result = '$num1 + $num2 = $sum';
    setState(() {});
    }
  else {
    _snackBar('숫자를 입력하세요', Colors.red);
  }
}

  // void errorSnackBar(){
  //   ScaffoldMessenger.of(context).showSnackBar(
  //    SnackBar(
  //     content: Text('글자를 입력하세요'),
  //     duration: Duration(seconds: 2),
  //     backgroundColor: Colors.red,
  //     ), 
  //   );
  // }

  // void showSnackBar(){
  //   ScaffoldMessenger.of(context).showSnackBar(
  //    SnackBar(
  //     content: Text('입력한 글자는 ${textEditingController.text.trim()} 입니다.'),
  //     duration: Duration(seconds: 2),
  //     backgroundColor: Colors.blue,
  //     ), 
  //   );

  // }


}