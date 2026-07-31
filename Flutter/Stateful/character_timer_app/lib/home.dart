import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Property
  late TextEditingController inputController;
  late String inputText;
  late String character;

  @override
  void initState() {
    super.initState();
    inputController = TextEditingController();
    inputText = inputController.text.trim();
    // character = inputText.split('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LED 광고'),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: inputController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: '텍스트를 입력하세요.',
              ),
            ),
            // ElevatedButton(
            //   onPressed: , 
            //   child: Text(input),
            // ),
          ],
        ),
      ),
    );
  }
}