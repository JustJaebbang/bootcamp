import 'package:flutter/material.dart';
import 'package:navigator_lamp_switch_app/util/message.dart';

class Modify extends StatefulWidget {
  const Modify({super.key});

  @override
  State<Modify> createState() => _ModifyState();
}

class _ModifyState extends State<Modify> {

  // Property
  late bool redSwtich; // lamp Red !Red
  late bool lampSwtich; // lamp ON OFF
  late String redState; // 레드스위치 앞 글씨
  late String lampState; // 램프스위치 앞 글씨

  @override
  void initState() {
    super.initState();
    redSwtich = Message.lampRed;
    lampSwtich = Message.lampOn;
    redState = redSwtich ? 'Red':'Yellow';
    lampState = lampSwtich ? 'ON':'OFF';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('수정화면'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  redState,
                ),
                Switch(
                  value: redSwtich, 
                  onChanged: (value) {
                    if(lampSwtich){
                      redSwtich = value;
                    }
                    redState = redSwtich ? 'Red':'Yellow';
                    setState(() {});
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    lampState,
                  ),
                  Switch(
                    value: lampSwtich, 
                    onChanged: (value) {
                    lampSwtich = value;
                    if(lampSwtich==false){
                      redSwtich = false;
                      redState = 'Yellow';
                    }
                    lampState = lampSwtich ? 'ON':'OFF';
                    setState(() {});
                    },
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Message.lampOn = lampSwtich;
                Message.lampRed = redSwtich;
                Navigator.pop(context);
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}