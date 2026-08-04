import 'package:flutter/material.dart';
import 'package:listview_app/view/listview.dart';
import 'package:listview_app/view/listview_second.dart';

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
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: [
          Listview(),
          ListviewSecond(),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        tabs: [
          Tab(
            icon: Icon(Icons.looks_one),
          ),
          Tab(
            icon: Icon(Icons.looks_two),
          ),
        ], 
      ),
    );
  }
}