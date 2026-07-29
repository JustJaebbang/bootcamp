import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Property
  late String buttonText;
  late MaterialColor buttonColor;
  late bool buttonState;

  @override
  void initState() {
    print('==================>>>> initState() 동작');
    super.initState();
    buttonText = 'Hello';
    buttonColor = Colors.blue;
    buttonState = true;
  }

  @override
  Widget build(BuildContext context) {
    print('==================>>>> build() 동작');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change button color & text'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(buttonColor),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
              ),
              onPressed: () => _onClick(),
              // style: ButtonStyle(), 
              child: Text(buttonText),
            ),
          ],
        ),
      ),
    );
  }

  // Functions

  void _onClick(){
    print('==================>>>> _onClick() 동작');
    if (buttonState==true){
    buttonText='Flutter';
    buttonColor=Colors.amber;
    buttonState=false;
    }
    else {
    buttonText='Hello';
    buttonColor=Colors.blue;
    buttonState=true;
    }
    setState(() {});
  }
}