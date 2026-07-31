import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Property
  late String imageName;
  late double imageWidth;
  late double imageHeight;
  late bool lampSwitch;
  late bool sizeSwitch; // false : 작음, true : 큼

  @override
  void initState() {
    super.initState();
    imageName = 'images/lamp_off.png';
    imageWidth = 150;
    imageHeight = 300;
    lampSwitch = false;
    sizeSwitch = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image 확대 및 축소'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 330,
              height: 630,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imageName,
                    width: imageWidth,
                    height: imageHeight,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      '전구 확대',
                    ),
                    Switch(
                      value: sizeSwitch, 
                      onChanged: (value) {
                        changeSize();
                        sizeSwitch=value;
                      },
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Text(
                      '전구 스위치',
                    ),
                    Switch(
                      value: lampSwitch, 
                      onChanged: (value) {
                        changeOnOff();
                        lampSwitch=value;
                      },
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  // Functions
  void changeSize(){
    if (sizeSwitch==true){
      imageHeight=300;
      imageWidth=150;
      sizeSwitch=false;
    }else{
      imageHeight=600;
      imageWidth=300;
      sizeSwitch=true;
    }
    setState(() {});
  }

  void changeOnOff(){
    lampSwitch==true ? imageName='images/lamp_on.png':imageName='images/lamp_off.png';
    setState(() {});
  }

}