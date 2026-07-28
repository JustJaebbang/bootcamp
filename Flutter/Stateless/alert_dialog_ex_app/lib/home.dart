import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert and push'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => _showDialog(context),
          child: Text('Move to 2nd page.'),
          ),
      ),
    );
  }

  void _showDialog(BuildContext context){
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context){
        return AlertDialog(
          title: Text('Page 이동'),
          content: Text('아래의 버튼을 누르면 페이지\n이동을 합니다.'),
          actions: [
            Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.blue)
                        ),
                        onPressed: (){
                          Navigator.of(context).pop();
                          Navigator.pushNamed(context, '/second');
                        }, 
                        child: Text(
                          'Page 이동',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        );
      }
    );
  }
}