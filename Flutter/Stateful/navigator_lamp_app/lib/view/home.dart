import 'package:flutter/material.dart';
import 'package:navigator_lamp_app/util/message.dart';
import 'package:navigator_lamp_app/view/controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Property
  late TextEditingController textcontroller; // 텍스트 입력 컨트롤러
  late String lampImage; // 램프이미지 경로

  @override
  void initState() {
    super.initState();
    textcontroller = TextEditingController();
    lampImage = 'images/lamp_on.png';
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
              // 이름 안정하고 넘길때 push
              // 이름 정해놨으면 pushNamed
              Message.contents = textcontroller.text;
              Navigator.push(
                context, 
                MaterialPageRoute( // main에서 route안잡아놔서 여기서 잡는거
                  builder: (context) => Controller(), //여기서 생성
                ),
              ).then((value) => rebuild());
            }, 
            icon: Icon(Icons.edit),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textcontroller,
                decoration: InputDecoration(
                  labelText: '글자를 입력하세요'
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                lampImage,
                width: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Functions
  void rebuild(){
    textcontroller.text = Message.contents;
    lampImage = Message.lampStatus ? 'images/lamp_on.png' : 'images/lamp_off.png' ;
    setState(() {}); 
  }
}