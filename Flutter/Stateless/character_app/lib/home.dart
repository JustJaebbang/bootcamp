import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[400],
      appBar: AppBar(
        title: Text('영웅 Card'),
        backgroundColor: Colors.orange[700],
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,8),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/Lee.jpg'),
                  radius: 60,
                ),
              ),
            ),
            Divider(color: const Color.fromARGB(255, 145, 122, 103)),
            Row(
              children: [Text('성웅', style: TextStyle(color: Colors.white))],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                  child: Text(
                    '이순신 장군',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '전적', 
                  style: TextStyle(
                    color: Colors.white
                  )
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                  child: Text(
                    '62전 62승',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
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
                  padding: const EdgeInsets.fromLTRB(8,0,8,0),
                  child: Text(
                    '옥포해전', 
                    style: TextStyle(
                      color: Colors.black
                    )
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
                  padding: const EdgeInsets.fromLTRB(8,0,8,0),
                  child: Text(
                    '사천포해전', 
                    style: TextStyle(
                      color: Colors.black
                    )
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
                  padding: const EdgeInsets.fromLTRB(8,0,8,0),
                  child: Text(
                    '당포해전', 
                    style: TextStyle(
                      color: Colors.black
                    )
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
                  padding: const EdgeInsets.fromLTRB(8,0,8,0),
                  child: Text(
                    '한산도대첩', 
                    style: TextStyle(
                      color: Colors.black
                    )
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
                  padding: const EdgeInsets.fromLTRB(8,0,8,0),
                  child: Text(
                    '부산포해전', 
                    style: TextStyle(
                      color: Colors.black
                    )
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
                  padding: const EdgeInsets.fromLTRB(8,0,8,0),
                  child: Text(
                    '명량해전', 
                    style: TextStyle(
                      color: Colors.black
                    )
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
                  padding: const EdgeInsets.fromLTRB(8,0,8,0),
                  child: Text(
                    '노량해전', 
                    style: TextStyle(
                      color: Colors.black
                    )
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/turtle.gif'),
                    backgroundColor: Colors.orange[400],
                    radius: 50,
                    ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
