import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Property
  late String imageName;
  late bool lampState;

  @override
  void initState() {
    super.initState();
    imageName = 'images/lamp_on.png';
    lampState = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert를 이용한 메세지 출력'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageName,
              height: 330,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      lampOn();
                    }, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('켜기'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      lampOff();
                    }, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('끄기'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // Functions
  void lampOn(){
    if (lampState){
      showDialog(
        context: context, 
        builder: (context) {
          return AlertDialog(
            title: Text('경고'),
            content: Text('현재 램프가 켜진 상태입니다.'),
            actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: Text('네, 알겠습니다'),
                ),
              ],
            );
          },
        );
    }else{
      lampState = true;
      imageName = 'images/lamp_on.png';
    }
    setState(() {});
  }

  void lampOff(){
    if (lampState==false){
      showDialog(
        context: context, 
        builder: (context) {
          return AlertDialog(
            title: Text('경고'),
            content: Text('현재 램프가 꺼진 상태입니다.'),
            actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: Text('네, 알겠습니다'),
                ),
              ],
            );
          },
        );
    }else{
      showDialog(
        context: context, 
        builder: (context) {
          return AlertDialog(
            title: Text('램프 끄기'),
            content: Text('램프를 끄시겠습니까?'),
            actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                lampState = false;
                imageName = 'images/lamp_off.png';
                setState(() {});
              }, 
              child: Text('네'),
                ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: Text('아니오'),
                ),
              ],
            );
          },
        );      
    }
    setState(() {});
  }
}