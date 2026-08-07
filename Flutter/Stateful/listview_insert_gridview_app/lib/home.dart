import 'package:flutter/material.dart';
import 'package:listview_insert_gridview_app/first_page.dart';
import 'package:listview_insert_gridview_app/model/animal_list.dart';
import 'package:listview_insert_gridview_app/second_page.dart';
import 'package:listview_insert_gridview_app/util/message.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  // Property
  late TabController controller;
  late List<AnimalList> animalList;
  late int listCount;
  
  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 2, 
      vsync: this,
    );

    animalList = [
      AnimalList(
        imagePath: 'images/bee.png', 
        imageName: '벌',
      ),
      AnimalList(
        imagePath: 'images/cat.png', 
        imageName: '고양이',
      ),
      AnimalList(
        imagePath: 'images/cow.png', 
        imageName: '젖소',
      ),
      AnimalList(
        imagePath: 'images/dog.png', 
        imageName: '강아지',
      ),
      AnimalList(
        imagePath: 'images/fox.png', 
        imageName: '여우',
      ),
      AnimalList(
        imagePath: 'images/monkey.png', 
        imageName: '원숭이',
      ),
      AnimalList(
        imagePath: 'images/pig.png', 
        imageName: '돼지',
      ),
      AnimalList(
        imagePath: 'images/wolf.png', 
        imageName: '늑대',
      ),
    ];

    listCount = animalList.length;
    Message.listCount = listCount;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Test'),
        centerTitle: true,
        bottom: TabBar(
            controller: controller,
            tabs: [
              Tab(
                icon: Icon(Icons.menu),
              ),
              Tab(
                icon: Icon(Icons.extension),
              ),
            ],
          ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          FirstPage(list: animalList,),
          SecondPage(list: animalList,),
        ],
      ),
    );
  }
}