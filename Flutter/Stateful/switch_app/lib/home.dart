import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Property
  late bool switchValue; // Switch의 상태
  late String swtichText; // Switch의 상태 글씨

  @override
  void initState() {
    super.initState();
    switchValue = true;
    swtichText = 'ON';
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(swtichText),
            Switch(
              value: switchValue, 
              onChanged: (value) {
                switchValue = value;
                _switchAction(value);
              },
            ),
          ],
        ),
      ),
    );
  }
  



  // Functions
  // Switch의 변경에 따른 화면 구성 변경
  void  _switchAction(bool value){
    if (switchValue==true){
      swtichText = 'ON';
    }
    else {
      swtichText = 'OFF';
    }
    setState(() {});
  }


}