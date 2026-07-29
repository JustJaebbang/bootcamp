import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Property
  late bool buttonState;
  late bool swtichState;
  late MaterialColor buttonColor;

  @override
  void initState() {
    super.initState();
    buttonState = false; // 버튼의 상태
    swtichState = false; // 스위치의 상태
    buttonColor = Colors.blue; // 버튼 색
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Changed Button color on Switch'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              // style: ButtonStyle(
              //   backgroundColor: WidgetStatePropertyAll(buttonColor)
              //   ),
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                foregroundColor: Colors.white,
              ),
              onPressed: () => _onClick(), 
              child: const Text(
                'Flutter',
                // style: TextStyle(color: Colors.white),
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Switch(
                value: swtichState, 
                onChanged: (value) {
                  // _switchAction();
                  swtichState = value;
                  changeButtonColor();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }


  // Functions
  void changeSwitch(){
    swtichState = swtichState ? false:true;
    changeButtonColor();
  }


  void changeButtonColor(){
    buttonColor = swtichState ? Colors.red : Colors.blue;
    setState(() {
      
    });
  }

  void _onClick(){
    if (buttonState == false){
      buttonColor = Colors.red;
      buttonState = true;
      swtichState = true;
    }
    else {
      buttonColor = Colors.blue;
      buttonState = false;
      swtichState = false;
    }
    setState(() {});
  }

  void _switchAction(){
    if (swtichState == false){
      buttonColor = Colors.red;
      buttonState = true;
      swtichState = true;
    }
    else {
      buttonColor = Colors.blue;
      buttonState = false;
      swtichState = false;
    }
    setState(() {});
  }
}