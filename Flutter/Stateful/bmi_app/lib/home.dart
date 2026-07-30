import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  // Property
  late TextEditingController heightController; // 신장 컨트롤러
  late TextEditingController weightController; // 몸무게 컨트롤러

  late double height; // 신장
  late double weight; // 몸무게
  late double bmi; // BMI
  late String bmiState; // BMI 상태
  late String printText; // 출력되는 텍스트

  late double arrow; // 화살표 위치
  late String imageArrow;
  late String imageBmi;

  @override
  void initState() {
    super.initState();
    
    heightController = TextEditingController(); 
    weightController = TextEditingController();

    height = 0; 
    weight = 0;
    bmi = 0;
    bmiState = '';
    printText = '';

    arrow = 8;
    imageArrow = 'white.png';
    imageBmi = 'white.png';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('BMI 계산기'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '신장을 입력하세요 (단위 :cm)'
              ),
            ),
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '몸무게를 입력하세요 (단위 :kg)'
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                calcFunction();
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: Text('BMI 계산'),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              printText,
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: arrow, // 화살표 위치
                ),
                Image.asset(
                  'images/$imageArrow',
                  width: 70,
                  height: 70,
                ),
              ],
            ),
            Image.asset(
              'images/$imageBmi',
              width: 400,
              height: 250,
            ),
          ],
        ),
      ),
    );
  }

  // Functions
  void calcFunction(){
    if(heightController.text.trim().isEmpty || weightController.text.trim().isEmpty){
      errorSnackBar();
    }else{
      bmiAction();
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

  void bmiAction(){
    height = double.parse(heightController.text.trim())/100; 
    weight = double.parse(weightController.text.trim()); 

    bmi = double.parse((weight/(height*height)).toStringAsFixed(1));

    if((height<=0 || height>=2.5) || (weight<=0 || weight>=300)){
      printText = '잘못된 신장 또는 몸무게입니다.';
    }else{
      imageArrow='arrow.png';
      imageBmi='bmi.jpg';
      checkBmi();
    }
    setState(() {});
  }

  void checkBmi(){
    if(bmi<=18.4){
      bmiState='저체중';
      arrow=8;
    }else if(bmi>=18.5 && bmi<=22.9){
      bmiState='정상체중';
      arrow=85;
    }else if(bmi>=23 && bmi<=24.9){
      bmiState='과체중';
      arrow=159;
    }else if(bmi>=25 && bmi<=29.9){
      bmiState='비만';
      arrow=233;
    }else{
      bmiState='고도비만';
      arrow=307;
    }

    printText='귀하의 bmi지수는 $bmi이고 $bmiState입니다.';
  }

}