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
  late bool colorSwitch;
  late bool sizeSwitch;
  late bool lampSwitch;
  late String colorTitle;

  @override
  void initState() {
    super.initState();
    imageName = 'images/lamp_red.png';
    imageWidth = 300;
    imageHeight = 600;
    colorSwitch = true;
    sizeSwitch = true;
    lampSwitch = true;
    colorTitle = '빨간색';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image 확대 및 축소'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 330,
              height: 660,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      colorTitle,
                    ),
                    Switch(
                      value: colorSwitch, 
                      onChanged: (value) {
                        colorSwitch=value;
                        turnColor();
                      },
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '전구 스위치',
                    ),
                    Switch(
                      value: lampSwitch, 
                      onChanged: (value) {
                        lampSwitch=value;
                        turnColor();
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

  void turnColor(){
    if(lampSwitch==false){
      imageName='images/lamp_off.png';
      colorTitle='회색';
      colorSwitch=false;
    }else if(colorSwitch==true){
      imageName='images/lamp_red.png';
      colorTitle='빨간색';
    }else{
      imageName='images/lamp_on.png' ;
      colorTitle='노란색';
    }  
    setState(() {});
  }

  void changeSize(){
    if(sizeSwitch==true){
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

  void turnLamp(){
    if(lampSwitch==true){
      imageName='images/lamp_on.png';
    }else{
      imageName='images/lamp_off.png';
      colorSwitch=false;
    } 
    turnColor();
    setState(() {});
  }
}