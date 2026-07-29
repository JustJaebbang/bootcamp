import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Property
  late TextEditingController num1controller;
  late TextEditingController num2controller;
  late TextEditingController num3controller; 
  late TextEditingController num4controller; 
  late TextEditingController num5controller; 
  late TextEditingController num6controller; 
  late String result1; 
  late String result2; 
  late String result3; 
  late String result4; 


  @override
  void initState() {
    super.initState();
    num1controller = TextEditingController();
    num2controller = TextEditingController();
    num3controller = TextEditingController();
    num4controller = TextEditingController();
    num5controller = TextEditingController();
    num6controller = TextEditingController();
    // result = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('간단한 계산기'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: num1controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: ('첫번째 숫자를 입력하세요'),
                // border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: num2controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: ('두번째 숫자를 입력하세요'),
                // border: OutlineInputBorder(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                spacing: 30,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: calcAction, 
                    child: Text('계산하기'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: removeAction, 
                    child: Text('지우기'),
                  ),
                ],
              ),
            ),
            TextField(
              controller: num3controller,
              // keyboardType: Textin,
              readOnly: true,
              decoration: InputDecoration(
                labelText: ('덧셈 결과'),
                // border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: num4controller,
              // keyboardType: Textin,
              readOnly: true,
              decoration: InputDecoration(
                labelText: ('뺄셈 결과'),
                // border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: num5controller,
              // keyboardType: Textin,
              readOnly: true,
              decoration: InputDecoration(
                labelText: ('곱셈 결과'),
                // border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: num6controller,
              // keyboardType: Textin,
              readOnly: true,
              decoration: InputDecoration(
                labelText: ('나눗셈 결과'),
                // border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function
  void calcAction(){
    if (num1controller.text.trim().isNotEmpty && num2controller.text.trim().isNotEmpty){
      int num1 = int.parse(num1controller.text.trim());
      int num2 = int.parse(num2controller.text.trim());
      // int sum = num1+num2;

      result1 = '${num1+num2}';
      result2 = '${num1-num2}';
      result3 = '${num1*num2}';
      result4 = '${num1/num2}';

      num3controller.text = result1.toString();
      num4controller.text = result2.toString();
      num5controller.text = result3.toString();
      num6controller.text = result4.toString();

      // print(result);
    }
    setState(() {});
  }

  void removeAction(){
    num1controller = TextEditingController();
    num2controller = TextEditingController();
    num3controller = TextEditingController();
    num4controller = TextEditingController();
    num5controller = TextEditingController();
    num6controller = TextEditingController();
    setState(() {});
  }
}