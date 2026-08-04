import 'package:flutter/material.dart';
import 'package:listview_app/model/animal.dart';
import 'package:listview_app/util/message.dart';
import 'package:listview_app/view/listview.dart';

class ListviewSecond extends StatefulWidget {
  const ListviewSecond({super.key});

  @override
  State<ListviewSecond> createState() => _ListviewSecondState();
}

class _ListviewSecondState extends State<ListviewSecond> {

  // Property 
  late TextEditingController animalController;

  @override
  void initState() {
    super.initState();
    animalController = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Animal'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            controller: animalController,
            decoration: InputDecoration(
              labelText: '동물 이름을 입력하세요',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Message.animalName = animalController.text.trim();
              Navigator.of(context).pop();
              setState(() {});
            }, 
            child: Text('입력'),
          ),
          ListView(
            child: Image.asset(
              'images/bee.png',
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}