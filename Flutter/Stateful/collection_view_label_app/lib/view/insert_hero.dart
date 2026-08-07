// 영웅 추가 화면
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InsertHero extends StatefulWidget {
  const InsertHero({super.key});

  @override
  State<InsertHero> createState() => _InsertHeroState();
}

class _InsertHeroState extends State<InsertHero> {
  // Property
  late TextEditingController nameController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('인물 추가'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: '인물을 추가하세요'
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  String resultMessage = '';
                  if(nameController.text.trim().isNotEmpty){
                    resultMessage = nameController.text.trim();
                  }

                  Get.back(result: resultMessage);
                }, 
                child: Text('추가'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Functions
}