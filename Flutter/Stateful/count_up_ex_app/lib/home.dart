import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Property
  late int count;

  @override
  void initState() {
    super.initState();
    count = 0; // 누른 횟수
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count Up & Down'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          spacing: 50,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('현재 클릭수는 $count 입니다.'),
            Row(
              spacing: 30,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _add,
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: _remove,
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.remove),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  // Functions
  // + 함수
  void _add(){
    count++;
    setState(() {});
  }

  // - 함수
  void _remove(){
    count--;
    setState(() {});
  }

}