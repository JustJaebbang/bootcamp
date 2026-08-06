import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listview_insert2_app/model/animal_list.dart';

class SecondPage extends StatefulWidget {
  final Function() _setState;
  final List<Animal> list;
  const SecondPage({super.key, required this.list, required this._setState});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  // Property
  late TextEditingController nameController;
  late int _radioValue;
  late bool canFly;
  late String _imagePath;
  late List<Color> animalColor;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    _radioValue = 0;
    canFly = false;
    _imagePath = '';
    animalColor = [];

    for(int i=0; i<widget.list.length; i++){ // animalColor에 색깔 넣어주기
      animalColor.add(Colors.yellow);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              maxLength: 20,
              maxLines: 1,
              decoration: InputDecoration(
                hintText: '등록할 동물 이름을 입력하세요' // 타이핑하면 없어짐
              ),
            ),
            RadioGroup(
              groupValue: _radioValue,
              onChanged: (value) {
                _radioValue=value!;
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
                Text('날 수 있나요?'),
                Checkbox(
                  value: canFly, 
                  onChanged: (value) {
                    canFly=value!;
                    setState(() {});
                  },
                ),
              ],
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.list.length,
                itemBuilder: (context, index) {
                  return index<8 ? GestureDetector(
                    onTap: () => rebuildBorder(index),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: animalColor[index],
                          width: 2,
                        )
                      ),
                      child: Image.asset(
                        widget.list[index].imagePath,
                      ),
                    ),
                  ) : Text('');
                },
              ),
            ),
            ElevatedButton(
              onPressed: () => _showDialog(),
              child: Text('동물 추가하기'),
            ),
          ],
        ),
      ),
    );
  }

  // Functions
  void rebuildBorder(int index){
    for(int i = 0; i<widget.list.length; i++){
      animalColor[i] = Colors.yellow;
    }

    animalColor[index] = Colors.red;
    _imagePath = widget.list[index].imagePath;

    setState(() {});
  }


  void _showDialog(){
    Animal animal = Animal(
      imagePath: _imagePath, 
      imageName: nameController.text, 
      kind: getKind(_radioValue), 
      canFly: canFly,
    );

    Get.defaultDialog(
      title: '동물 추가하기',
      middleText: '이 동물은 ${animal.imageName}입니다.\n'
                  '이 동물은 ${animal.kind}입니다.\n'
                  '이 동물은 ${animal.canFly ? "날 수 있습니다." : "날 수 없습니다."}\n\n'
                  '이 동물을 추가하시겠습니까?',
      barrierDismissible: false,
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                widget.list.add(animal);
                animalColor.add(Colors.yellow);

                // 초기화
                nameController.text = '';
                _radioValue = 0;
                canFly = false;
                _imagePath = '';

                widget._setState();
                Get.back();
              }, 
              child: Text('예'),
            ),
            TextButton(
              onPressed: () => Get.back(), 
              child: Text('아니오'),
            ),
          ],
        )
      ],
    );
  }


  String getKind(int radioValue){
    String kind = '';

    switch (radioValue){
      case 1: kind='파충류';
      case 2: kind='포유류';
      default: kind='양서류';
    }

    return kind;
  }
}