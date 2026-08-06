import 'package:flutter/material.dart';
import 'package:listview_insert2_app/model/animal_list.dart';
import 'package:listview_insert2_app/view/first_page.dart';
import 'package:listview_insert2_app/view/second_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  // Property
  late TabController controller;
  late List<Animal> animalList;

  void _setState(){
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 2, 
      vsync: this,
    );
    animalList = [];
    addList();
  }

  void addList(){
    animalList.add(Animal(
      imagePath: 'images/bee.png', 
      imageName: '벌', 
      kind: '곤충', 
      canFly: true,
      )
    );
    animalList.add(Animal(
      imagePath: 'images/cat.png', 
      imageName: '고양이', 
      kind: '포유류', 
      canFly: false,
      )
    );
    animalList.add(Animal(
      imagePath: 'images/cow.png', 
      imageName: '젖소', 
      kind: '포유류', 
      canFly: false,
      )
    );
    animalList.add(Animal(
      imagePath: 'images/dog.png', 
      imageName: '강아지', 
      kind: '포유류', 
      canFly: false,
      )
    );
    animalList.add(Animal(
      imagePath: 'images/fox.png', 
      imageName: '여우', 
      kind: '포유류', 
      canFly: false,
      )
    );
    animalList.add(Animal(
      imagePath: 'images/monkey.png', 
      imageName: '원숭이', 
      kind: '영장류', 
      canFly: false,
      )
    );
    animalList.add(Animal(
      imagePath: 'images/pig.png', 
      imageName: '돼지', 
      kind: '포유류', 
      canFly: false,
      )
    );
    animalList.add(Animal(
      imagePath: 'images/wolf.png', 
      imageName: '늑대', 
      kind: '포유류', 
      canFly: false,
      )
    );
  }

  @override
  void dispose() {
    controller.dispose(); // tabbar 메모리 정리
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ListView Test'),
            Text(
              '동물 수 : ${animalList.length}',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
        bottom: TabBar(
          controller: controller,
          tabs: [
            Tab(
              text: 'Table',
              icon: Icon(
                Icons.reorder,
                color: Colors.amber,
              ),
            ),
            Tab(
              text: 'insert',
              icon: Icon(
                Icons.extension,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          FirstPage(list: animalList,),
          SecondPage(list: animalList, setState: _setState,),
        ],
      ),
    );
  }
}