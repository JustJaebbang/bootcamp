import 'package:flutter/material.dart';
import 'package:listview_app/model/animal.dart';

class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  
  // Property
  late List<Animal> animalList;

  @override
  void initState() {
    super.initState();
    animalList = [];
    addData();
  }

  void addData(){
    animalList.add(Animal(imagePath: 'images/bee.png', animalName: '벌'));
    animalList.add(Animal(imagePath: 'images/cat.png', animalName: '고양이'));
    animalList.add(Animal(imagePath: 'images/cow.png', animalName: '젖소'));
    animalList.add(Animal(imagePath: 'images/dog.png', animalName: '강아지'));
    animalList.add(Animal(imagePath: 'images/fox.png', animalName: '여우'));
    animalList.add(Animal(imagePath: 'images/monkey.png', animalName: '원숭이'));
    animalList.add(Animal(imagePath: 'images/pig.png', animalName: '돼지'));
    animalList.add(Animal(imagePath: 'images/wolf.png', animalName: '늑대'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview Test'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: animalList.length,
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: [
                Image.asset(
                  animalList[index].imagePath,
                  width: 100,
                ),
                Text(
                  '     ${animalList[index].animalName}',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}