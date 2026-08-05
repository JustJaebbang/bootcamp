import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Property
  late String lampImage;
  late bool lampState;

  @override
  void initState() {
    super.initState();
    lampImage = 'images/lamp_on.png';
    lampState = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert를 이용한 메세지 출력'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              lampImage,
              width: 200,
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    checkLamp(true);
                  }, 
                  child: Text('켜기'),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    checkLamp(false);
                  }, 
                  child: Text('끄기'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Functions
  void checkLamp(bool lamp){
    if(lampState==lamp){
      Get.defaultDialog(
        title: '경고',
        content: Text(
          lamp ? '현재 램프가 켜진 상태입니다.':'현재 램프가 꺼진 상태입니다.'
        ),
        barrierDismissible: false,
        actions: [
          TextButton(
            onPressed: () => Get.back(), 
            child: Text('네, 알겠습니다.'),
          ),
        ],
      );
    }else{
      showCupertinoModalPopup(
        context: context, 
        builder: (context) {
          return CupertinoActionSheet(
            title: Text(lampState ? '램프 끄기':'램프 켜기'),
            message: Text(lampState ? '램프를 끄시겠습니까?':'램프를 켜시겠습니까?'),
            actions: [
              CupertinoActionSheetAction(
                onPressed: () {
                  lampState=lampState ? false:true; 
                  lampImage=lampState ? 'images/lamp_on.png':'images/lamp_off.png';
                  setState(() {});
                  Get.back();
                },
                child: Text('예'),
              ),
              CupertinoActionSheetAction(
                onPressed: () {
                  Get.back();
                },
                child: Text('아니오'),
              ),
            ],
          );
        }
      );
    }
    setState(() {});
  }
}