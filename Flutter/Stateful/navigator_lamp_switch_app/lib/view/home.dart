import 'package:flutter/material.dart';
import 'package:navigator_lamp_switch_app/util/message.dart';
import 'package:navigator_lamp_switch_app/view/modify.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Property
  late String lampImage; // lamp image
  late bool lampOn; // lamp ON OFF
  late bool lampRed; // lamp Red !Red

  @override
  void initState() {
    super.initState();
    lampImage = 'images/lamp_on.png';
    lampOn = true;
    lampRed = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main 화면'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Message.lampOn = lampOn;
              Message.lampRed = lampRed;
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => Modify(),
                ),
              ).then((value) => imageUpdate());
            }, 
            icon: Icon(Icons.edit),
          ),
        ],
      ),
      body: Center(
        child: Image.asset(
          lampImage,
          width: 200,
        ),
      ),
    );
  }

  // Functions
  void imageUpdate(){
    lampOn=Message.lampOn;
    lampRed=Message.lampRed;

    if(lampOn==false){
      lampImage = 'images/lamp_off.png';
    }else if(lampRed){
      lampImage = 'images/lamp_red.png';
    }else{
      lampImage = 'images/lamp_on.png';
    }

    setState(() {});
  }

}