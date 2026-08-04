import 'package:flutter/material.dart';
import 'package:listview_ex2_app/model/todolist.dart';
import 'package:listview_ex2_app/util/message.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  // Property
  late List<TodoList> todoList;

  @override
  void initState() {
    super.initState();
    todoList = [];
    addData();
  }

  void addData(){
    todoList.add(TodoList(imagePath: 'images/cart.png', workList: '당근 구매하기'));
    todoList.add(TodoList(imagePath: 'images/clock.png', workList: '3시 약속'));
    todoList.add(TodoList(imagePath: 'images/pencil.png', workList: 'Flutter 공부하기'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main View'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/insert').then((value) => insert());
            }, 
            icon: Icon(Icons.add_outlined)
          ),
        ],
      ),
      // 데이터가 있는 리스트를 사용할땐 
      body: Center(
        child: ListView.builder( // ListView는 itembuilder로 받고
          itemCount: todoList.length,
          itemBuilder: (context, index) { // itembuilder는 Return으로 받는다.
            return GestureDetector(
              onTap: () {
                Message.imagePath = todoList[index].imagePath;
                Message.workList = todoList[index].workList;
                Navigator.pushNamed(context, '/detail');
              },
              child: Card(
                child: Row(
                  children: [
                    Image.asset(
                      todoList[index].imagePath,
                    ),
                    Text(todoList[index].workList),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // Functions
  void insert(){
    if (Message.action){
    todoList.add(TodoList(imagePath: Message.imagePath, workList: Message.workList));
    Message.action=false;
    setState(() {});
    }
  }
}