import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Property
  late TextEditingController num1Controller; // 첫번째 숫자 입력
  late TextEditingController num2Controller; // 첫번째 숫자 입력

  late TextEditingController addController; // 덧셈 결과
  late TextEditingController subController; // 뺄셈 결과
  late TextEditingController mulController; // 곱셈 결과
  late TextEditingController divController; // 나눗셈 결과

  late bool addSwitchValue;
  late bool subSwitchValue;
  late bool mulSwitchValue;
  late bool divSwitchValue;

  late String addResult;
  late String subResult;
  late String mulResult;
  late String divResult;

  @override
  void initState() {
    super.initState();
    num1Controller = TextEditingController();
    num2Controller = TextEditingController();
    
    addController = TextEditingController();
    subController = TextEditingController();
    mulController = TextEditingController();
    divController = TextEditingController();

    addSwitchValue = false;
    subSwitchValue = false;
    mulSwitchValue = false;
    divSwitchValue = false;

    // num1 = int.parse(num1Controller.text);
    // num2 = int.parse(num2Controller.text);

    addResult = '';
    subResult = '';
    mulResult = '';
    divResult = '';
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('간단한 계산기'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              textAlign: TextAlign.end, // 텍스트를 우측정렬
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '첫번째 숫자를 입력하세요',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              textAlign: TextAlign.end, // 텍스트를 우측정렬
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '두번째 숫자를 입력하세요',
                border: OutlineInputBorder(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: calcAction,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('계산하기'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: removeAction, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('지우기'),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('덧셈'),
                Switch(
                  value: addSwitchValue, 
                  onChanged: (value) {
                    addSwitchValue=value;
                    switchAction(addSwitchValue, addController, addResult);
                  }
                ),
                Text('뺄셈'),
                Switch(
                  value: subSwitchValue, 
                  onChanged: (value) {
                    subSwitchValue=value;
                    switchAction(subSwitchValue, subController, subResult);
                  }
                ),
                Text('곱셈'),
                Switch(
                  value: mulSwitchValue, 
                  onChanged: (value) {
                    mulSwitchValue=value;
                    switchAction(mulSwitchValue, mulController, mulResult);
                  }
                ),
                Text('나눗셈'),
                Switch(
                  value: divSwitchValue, 
                  onChanged: (value) {
                    divSwitchValue=value;
                    switchAction(divSwitchValue, divController, divResult);
                  }
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              controller: addController,
              readOnly: true,
              decoration: InputDecoration(
                labelText: '덧셈결과',
              ),
            ),
            TextField(
              controller: subController,
              readOnly: true,
              decoration: InputDecoration(
                labelText: '뺄셈결과',
              ),
            ),
            TextField(
              controller: mulController,
              readOnly: true,
              decoration: InputDecoration(
                labelText: '곱셈결과',
              ),
            ),
            TextField(
              controller: divController,
              readOnly: true,
              decoration: InputDecoration(
                labelText: '나눗셈결과',
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Functions
  void calcAction(){
    if(num1Controller.text.trim().isEmpty || num2Controller.text.trim().isEmpty){
      errorSnackBar();
    }
    else {
      calcResult();
    }
  }

  void errorSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('숫자를 입력하세요'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
      ),
    );
  }

  void calcResult(){
    int num1 = int.parse(num1Controller.text);
    int num2 = int.parse(num2Controller.text);

    int addResult = num1+num2;
    int subResult = num1-num2;
    int mulResult = num1*num2;
    double divResult = 0;

    if(addSwitchValue==true){
      addController.text = addResult.toString();
    }
    if(subSwitchValue==true){
      subController.text = subResult.toString();
    }
    if(mulSwitchValue==true){
      mulController.text = mulResult.toString();
    }

    // 나눗셈의 결과는 실수, 분모가 0인 경우 계산할 수 없음
    if(num2==0){
      if(divSwitchValue==true){
        divController.text = 'Impossible';
      }
    }else{
      divResult = num1 / num2;
      if(divSwitchValue==true){
      divController.text=divResult.toString();
      }
    }

    this.addResult = addResult.toString();
    this.subResult = subResult.toString();
    this.mulResult = mulResult.toString();
    this.divResult = divResult.toString();

  }

  // 선생님 코드 야무지다..
  void switchCheck(){
    addController.text = addSwitchValue ? addResult : '';
    subController.text = subSwitchValue ? subResult : '';
    mulController.text = mulSwitchValue ? mulResult : '';
    divController.text = divSwitchValue ? divResult : '';
    setState(() {});
  }

  void removeAction(){
    num1Controller.text = '';
    num2Controller.text = '';
    addController.text = '';
    subController.text = '';
    mulController.text = '';
    divController.text = '';
  }

  void switchAction
  (bool switchValue, TextEditingController controller, String result)
    {
    if(switchValue==false){
      controller.text = '';
    }else{
      if(result==0.0.toString()){
        controller.text = 'Impossible';
      }else{
      controller.text = result;
      }
    }
    
    setState(() {});
  }
}