import 'package:flutter/material.dart';
import 'package:navigator_tabbar_ex_app/animal_class.dart';
import 'package:navigator_tabbar_ex_app/first_animal.dart';
import 'package:navigator_tabbar_ex_app/second_animal.dart';

class Animal extends StatefulWidget {
  const Animal({super.key});

  @override
  State<Animal> createState() => _AnimalState();
}

class _AnimalState extends State<Animal> with SingleTickerProviderStateMixin{

  // Property
  late TabController controller;
  late List<AnimalType> animalList;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 2, 
      vsync: this,
    );
    animalList = [];
    addData();
  }

  void addData(){
    animalList.add(AnimalType(
      imagePath: 'images/bee.png', 
      animalName: '벌',
      kind: '곤충',
      canFly: true)
    );
    animalList.add(AnimalType(
      imagePath: 'images/cat.png', 
      animalName: '고양이',
      kind: '포유류',
      canFly: false)
    );
    animalList.add(AnimalType(
      imagePath: 'images/cow.png', 
      animalName: '젖소',
      kind: '포유류',
      canFly: false)
    );
    animalList.add(AnimalType(
      imagePath: 'images/dog.png', 
      animalName: '강아지',
      kind: '포유류',
      canFly: false)
    );
    animalList.add(AnimalType(
      imagePath: 'images/fox.png', 
      animalName: '여우',
      kind: '포유류',
      canFly: false)
    );
    animalList.add(AnimalType(
      imagePath: 'images/monkey.png', 
      animalName: '원숭이',
      kind: '영장류',
      canFly: false)
    );
    animalList.add(AnimalType(
      imagePath: 'images/pig.png', 
      animalName: '돼지',
      kind: '포유류',
      canFly: false)
    );
    animalList.add(AnimalType(
      imagePath: 'images/wolf.png', 
      animalName: '늑대',
      kind: '포유류',
      canFly: false)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('동물 친구 찾기'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: TabBarView(
        controller: controller,
        children: [
          FirstAnimal(list: animalList,),
          SecondAnimal(list: animalList,),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        tabs: [
          Tab(
            icon: Icon(
              Icons.looks_one,
              color: Colors.blue,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.looks_two,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}