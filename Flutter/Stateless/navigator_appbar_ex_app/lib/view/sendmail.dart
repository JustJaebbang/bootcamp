import 'package:flutter/material.dart';

class SendMail extends StatelessWidget {
  const SendMail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Mail'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Text('유비에게 보낸 메일'),
          Text('관우에게 보낸 메일'),
          Text('장비에게 보낸 메일'),
        ],
      ),
    );
  }
}