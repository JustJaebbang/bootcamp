import 'package:flutter/material.dart';
import 'package:navigator_lamp_app/util/message.dart';

class Controller extends StatefulWidget {
  const Controller({super.key});

  @override
  State<Controller> createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {

  // Property
  late TextEditingController textController;
  late String switchLabel;
  late bool swtichValue;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    textController.text = Message.contents;
    switchLabel= Message.lampStatus ? "ON" : "OFF";
    swtichValue= Message.lampStatus ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('수정 화면'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textController,
        
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      switchLabel,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Switch(
                      value: swtichValue, 
                      onChanged: (value) {
                        swtichValue=value;
                        switchLabel = swtichValue ? 'ON' : 'OFF';
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Message.contents = textController.text;
                  Message.lampStatus = swtichValue;
                  Navigator.pop(context);
                }, 
                child: Text('OK'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}