import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text('영웅 Card'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/Lee.jpg'),
                radius: 60,
              ),
            ),
            Divider(color: Colors.blueGrey,),
            Row(
              children: [
                Text(
                  '영웅',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
              ],
            ),
            Row(
              children: [
                Text(
                  '이순신 장군',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  ),
              ],
            ),
            Row(
              children: [
                Text(
                  '전적',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
              ],
            ),
            Row(
              children: [
                Text(
                  '62전 62승',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                  ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  size: 18,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,0,0,0),
                  child: Text(
                    '해전',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    ),
                ),
              ],
            ),            
            Row(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  size: 18,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,0,0,0),
                  child: Text(
                    '해전',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    ),
                ),
              ],
            ),            
            Row(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  size: 18,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,0,0,0),
                  child: Text(
                    '해전',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    ),
                ),
              ],
            ),            
            Row(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  size: 18,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,0,0,0),
                  child: Text(
                    '해전',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    ),
                ),
              ],
            ),            
            Row(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  size: 18,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,0,0,0),
                  child: Text(
                    '해전',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    ),
                ),
              ],
            ),            
            Row(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  size: 18,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,0,0,0),
                  child: Text(
                    '해전',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    ),
                ),
              ],
            ),            
            Row(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  size: 18,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,0,0,0),
                  child: Text(
                    '해전',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    ),
                ),
              ],
            ),   
            CircleAvatar(
              backgroundImage: AssetImage('images/turtle.gif'),
              backgroundColor: Colors.orange,
              radius: 50,
              )
          ],
        ),
      ),
    );
  }
}