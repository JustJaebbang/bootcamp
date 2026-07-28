import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            //
          }, 
          icon: Icon(Icons.shopping_cart),
          ),
          IconButton(onPressed: () {
            //
          }, 
          icon: Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        child: Center(
          child: ListView( // ListView가 스크롤 기능도 갖고있음. 중요
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/pikachu-1.jpg'),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/pikachu-2.jpg'),
                    ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/pikachu-3.jpg'),
                    ),
                ],
                accountName: Text('Pikachu'), 
                accountEmail: Text('Pikachu@naver.com'),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                title: Text('Home'),
                onTap: () {
                  print('Home is clicked');
                },
              ),
              ElevatedButton(
                onPressed: () {
                  //
                }, 
                child: Text('Button'))
            ],
          ),
        ),
      ),
    );
  }
}