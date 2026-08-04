import 'package:flutter/material.dart';
import 'package:navigator_tabbar_ex_app/animal_class.dart';

class SecondAnimal extends StatefulWidget {
  final List<AnimalType> list;
  const SecondAnimal({super.key, required this.list});

  @override
  State<SecondAnimal> createState() => _SecondAnimalState();
}

class _SecondAnimalState extends State<SecondAnimal> {

  // Property
  late TextEditingController nameController;
  late int _radioValue;
  late bool flyExist;
  late String _imagePath;
  late String imageName;
  
  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    _radioValue=0;
    flyExist = false;
    _imagePath = '';
    imageName = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: nameController,
            maxLength: 20,
            maxLines: 1,
            decoration: InputDecoration(
              labelText: '동물 이름을 입력하세요'
            ),
          ),
          RadioGroup(
            groupValue: _radioValue,
            onChanged: (value) {
              _radioValue = value!;
              setState(() {});
            }, 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(value: 0),
                Text('양서류'),
                Radio(value: 1),
                Text('파충류'),
                Radio(value: 2),
                Text('포유류'),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '날 수 있나요?      ',
              ),
              Checkbox(
                value: flyExist, 
                onChanged: (value) {
                  flyExist = value!;
                  setState(() {});
                },
              ),
            ],
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () {
                    _imagePath = 'images/cow.png';
                    imageName = '젖소';
                    setState(() {});
                  },
                  child: Image.asset(
                    'images/cow.png',
                    width: 80,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _imagePath = 'images/pig.png';
                    imageName = '돼지';
                    setState(() {});
                  },
                  child: Image.asset(
                    'images/pig.png',
                    width: 80,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _imagePath = 'images/bee.png';
                    imageName = '벌';
                    setState(() {});
                  },
                  child: Image.asset(
                    'images/bee.png',
                    width: 80,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _imagePath = 'images/cat.png';
                    imageName = '고양이';
                    setState(() {});
                  },
                  child: Image.asset(
                    'images/cat.png',
                    width: 80,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _imagePath = 'images/fox.png';
                    imageName = '여우';
                    setState(() {});
                  },
                  child: Image.asset(
                    'images/fox.png',
                    width: 80,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _imagePath = 'images/monkey.png';
                    imageName = '원숭이';
                    setState(() {});
                  },
                  child: Image.asset(
                    'images/monkey.png',
                    width: 80,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {

              showDialog(
                context: context, 
                builder: (context) {
                  return AlertDialog(
                    content: Text('동물 추가하겠습니다.'),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          widget.list.add(AnimalType(
                            imagePath: _imagePath, 
                            animalName: nameController.text.trim(), 
                            kind: getKind(_radioValue), 
                            canFly: flyExist,
                            )
                          );
                          Navigator.of(context).pop();  
                        }, 
                        child: Text('네')
                      ),
                    ],
                  );    
                },
              );
              
              // setState(() {});
              // Navigator.pushNamed(context, '/animal');
            }, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white
            ),
            child: Text('동물 추가하기'),
          ),
        ],
      ),
    );
  }

  // Functions

  String getKind(int value){
    String returnValue = '';
    switch (value){
      case 0: returnValue = '양서류';  
      case 1: returnValue = '파충류';  
      case 2: returnValue = '포유류';  
    }
    return returnValue;
  }
}