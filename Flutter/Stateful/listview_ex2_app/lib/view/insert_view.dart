import 'package:flutter/material.dart';
import 'package:listview_ex2_app/util/message.dart';

class InsertView extends StatefulWidget {
  const InsertView({super.key});

  @override
  State<InsertView> createState() => _InsertViewState();
}

class _InsertViewState extends State<InsertView> {

  // Property
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Insert_View'),
      ),
      body: Column(
        children: [
          TextField(
            controller: textController,
            decoration: InputDecoration(
              labelText: '할 일을 입력하세요',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if(textController.text.trim().isNotEmpty){
                Message.imagePath = 'images/pencil.png';
                Message.workList = textController.text.trim();
                Message.action = true;
              }
                Navigator.pop(context);
            }, 
            child: Text('입력'),
          ),
        ],
      ),
    );
  }
}