import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listview_insert_gridview_app/model/animal_list.dart';
import 'package:listview_insert_gridview_app/util/message.dart';

class SecondPage extends StatefulWidget {
  final List<AnimalList> list;
  const SecondPage({super.key, required this.list});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  // Property
  late TextEditingController textEditingController;
  late int _radioValue;
  late bool canFly;
  late int selectedAnimal;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    _radioValue = 0;
    canFly = false;
    selectedAnimal=0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: textEditingController,
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
                Text('날 수 있나요?'),
                Checkbox(
                  value: canFly, 
                  onChanged: (value) {
                    canFly = value!;
                    setState(() {});
                  },
                ),
              ],
            ),
            SizedBox(
              width: 300,
              height: 300,
              child: CupertinoPicker(
                itemExtent: 100, 
                onSelectedItemChanged: (value) {
                  selectedAnimal=value;
                  setState(() {});
                }, 
                children: List.generate(
                  Message.listCount, 
                  (index) => Center(
                    child: Image.asset(
                      widget.list[index].imagePath,
                      width: 100,
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //
              }, 
              child: Text('추가'),
            ),
          ],
        ),
      ),
    );
  }
}