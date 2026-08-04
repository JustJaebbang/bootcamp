import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tabbar_app/first_page.dart';
import 'package:tabbar_app/second_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  // Property
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 2, 
      vsync: this, // tab 기능을 어디에 넣을거냐?
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Tab Bar Test'),
      //   backgroundColor: Colors.blue,
      //   foregroundColor: Colors.white,
      // ),
      body: TabBarView(
        controller: controller,
        children: [
          FirstPage(),
          SecondPage(),
        ],
      ),
      // 컨테이너나 사이즈박스로 감싸서 띄워줘야댐
      bottomNavigationBar: Container(
        color: Colors.amber,
        height: 80,
        child: TabBar(
          controller: controller,
          labelColor: Colors.blue, // 선택된거 색을 바꿔줌
          indicatorColor: Colors.red, // 제일 밑에 색으로 현재 탭 알려줌
          indicatorWeight: 10, // 인디케이터 두께
          tabs: [
            Tab(
              icon: Icon(Icons.looks_one),
              text: 'one',
            ),
            Tab(
              icon: Icon(Icons.looks_two),
              text: 'two',
            )
          ],
        ),
      ), // 하단에서 띄워주는거
    );
  }
}