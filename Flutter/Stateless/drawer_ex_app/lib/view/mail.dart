import 'package:drawer_ex_app/view/send.dart';
import 'package:flutter/material.dart';

class Mail extends StatelessWidget {
  const Mail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Mail'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () => Mailroute(context, '/send'), 
            icon: Icon(Icons.email)
          ),
          IconButton(
            onPressed: () => Mailroute(context, '/received'), 
            icon: Icon(Icons.email_outlined)
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Mailroute(context, '/send'), 
              style: ButtonStyle(
                backgroundColor:WidgetStatePropertyAll(Colors.green),
                ),
              child: Text(
                '보낸 편지함',
                style: TextStyle(color: Colors.white),
                ),
              ),
            ElevatedButton(
              onPressed: () => Mailroute(context, '/received'), 
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.red),
              ),
              child: Text(
                '받은 편지함',
                style: TextStyle(color: Colors.white),
                ),
              ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Center(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/pikachu-1.jpg'),
                ),
                accountName: Text('Pikachu'), 
                accountEmail: Text('Pikachu@gmail.com'),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Mailroute(context, '/send'),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blue,
                  ),
                  title: Text('보낸 편지함'),
                ),
              ),
              GestureDetector(
                onTap: () => Mailroute(context, '/received'),
                child: ListTile(
                  leading: Icon(
                    Icons.email_outlined,
                    color: Colors.red,
                  ),
                  title: Text('받은 편지함'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function
  void Mailroute(BuildContext context, String route){
    Navigator.pushNamed(context, route);
  }
}