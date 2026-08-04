import 'package:flutter/material.dart';
import 'package:listview_todo_app/model/todo_list.dart';
import 'package:listview_todo_app/util/message.dart';

class TableList extends StatefulWidget {
  const TableList({super.key});

  @override
  State<TableList> createState() => _TableListState();
}

class _TableListState extends State<TableList> {
  // Property
  late List<TodoList> todoList;

  @override
  void initState() {
    super.initState();
    todoList = [];
    addData();
  }

  void addData(){
    todoList.add(TodoList(imagePath: 'images/cart.png', workList: '책구매'));
    todoList.add(TodoList(imagePath: 'images/clock.png', workList: '철수와 약속'));
    todoList.add(TodoList(imagePath: 'images/pencil.png', workList: '스터디 준비하기'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main View'),
        actions: [
          IconButton(
            // 뒤에 화면이 pop으로 돌아오면 .then()이 실행됨
            onPressed: () => Navigator.pushNamed(context, '/insert').then((value) => rebuildData()), 
            icon: Icon(Icons.add_outlined),
          ),
        ],
      ),
      body: Center(
        // List에 데이터가 있다면 ListView.builder가 좋다!!
        child: ListView.builder( // builder는 반복문!
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return Dismissible(
              direction: DismissDirection.endToStart,
              key: ValueKey(todoList[index]),
              onDismissed: (direction) {
                todoList.remove(todoList[index]);
                setState(() {});
              },
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.delete_forever,
                  size: 50,
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  Message.workList = todoList[index].workList;
                  Message.imagePath = todoList[index].imagePath;
                  Navigator.pushNamed(
                    context, 
                    '/detail'
                  );
                },
                child: SizedBox(
                  height: 100,
                  child: Card(
                    color : index % 2 == 0 
                    ? const Color.fromARGB(255, 134, 248, 138)
                    : const Color.fromARGB(255, 252, 142, 134),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            todoList[index].imagePath,
                          ),
                        ),
                        Text(
                          '     ${todoList[index].workList}',
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // Functions
  void rebuildData(){
    if(Message.action){
    todoList.add(TodoList(imagePath: Message.imagePath, workList: Message.workList));
    Message.action = false;
    setState(() {});
    }
  }

}