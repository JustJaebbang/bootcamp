import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Property
  // picker view로 보여줄 단 리스트
  late List<String> gugudanList;
  // 선택된 단을 타이틀에 보여줘야함 -> 인덱스로
  late int selectedDan;
  // TextField 컨트롤러가 필요함
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    // gugudanList = [
    //   '1단',
    //   '2단',
    //   '3단',
    //   '4단',
    //   '5단',
    //   '6단',
    //   '7단',
    //   '8단',
    //   '9단',
    // ];
    gugudanList = List.generate(
      8, 
      (index) => '${index+2}단',
    );

    selectedDan = 0;

    controller = TextEditingController();

    for(int i=1; i<=9; i++){
        controller.text +='   2 X $i = ${2*i}\n';
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(gugudanList[selectedDan]),
        backgroundColor: Colors.purple[100],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              height: 250,
              child: CupertinoPicker(
                itemExtent: 50, 
                onSelectedItemChanged: (value) {
                  selectedDan = value;
                  gugudan(selectedDan);
                }, 
                children: List.generate(
                  gugudanList.length, 
                  (index) => Center(
                    child: Text(
                      gugudanList[index],
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  )
                ),
              ),
            ),
            Container(
              color: Colors.deepPurple[200],
              width: 250,
              child: CupertinoTextField(
                controller: controller,
                readOnly: true,
                maxLines: 9,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Functions
  String gugudan(int selectedDan){
    int dan = selectedDan+2; // 단 수
    controller.text=''; // 컨트롤러 텍스트 초기화

      for(int i=1; i<=9; i++){
        controller.text +='   $dan X $i = ${dan*i}\n';
      }

    setState(() {});
    return controller.text;
  }
}