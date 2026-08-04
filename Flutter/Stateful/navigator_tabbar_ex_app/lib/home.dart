import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Property
  late TextEditingController userIdController;
  late TextEditingController userPwController;

  @override
  void initState() {
    super.initState();
    userIdController = TextEditingController();
    userPwController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 200,
                height: 300,
                child: Icon(
                  Icons.person_outline,
                  size: 150,
                  color: Colors.blue,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: userIdController,
                    maxLength: 20,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: '사용자 ID를 입력하세요'
                    ),
                  ),
                  TextField(
                    controller: userPwController,
                    // maxLength: 20,
                    maxLines: 1,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password를 입력하세요'
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _checkLogin();
                    }, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Log In'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Functions
  void _checkLogin(){
    if(userIdController.text.trim().isEmpty || userPwController.text.trim().isEmpty){
      _errorSnackBar();
    }else{
      if(userIdController.text.trim()=='jaebbang' && userPwController.text.trim()=='1234'){
        _showDialog();
      }else{
        _showSnackBar();
      }
    }
  }

  void _errorSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        duration: Duration(seconds: 2),
        content: Text('ID와 Password를 입력하세요'),
      )
    );
  }

  void _showDialog(){
    showDialog(
      context: context, 
      builder: (context) {
        return AlertDialog(
          title: Text('환영합니다!'),
          content: Text('신원이 확인되었습니다.'),
          actions: [
            ElevatedButton(
              onPressed: () {
                userIdController.text='';
                userPwController.text='';
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/animal');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: Text('확인'),
            ),
          ],
        );
      },
    );
  }

  void _showSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.amber[800],
        duration: Duration(seconds: 2),
        content: Text('ID 또는 Password가 일치하지 않습니다'),
      )
    );
  }
}