import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator_AppBar'),
        actions: [
          IconButton(
            onPressed: () => mailRoute(context, '/SendMail'), 
            icon: Icon(Icons.email),
            ),
          IconButton(
            onPressed: () => mailRoute(context, '/ReceivedMail'),
            icon: Icon(Icons.email_outlined),
            ),
          ],
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed:() => mailRoute(context, '/SendMail'), 
              child: Text('보낸 편지함'),
            ),
            ElevatedButton(
              onPressed:() => mailRoute(context, '/ReceivedMail'), 
              child: Text('받은 편지함')
            ),
          ],
        ),
      ),
    );
  }

  // ---Functions---

  // pushname의 위치를 받아 navigator를 사용하는 함수
  void mailRoute(BuildContext context, String route){
    Navigator.pushNamed(context,route);
  }
}