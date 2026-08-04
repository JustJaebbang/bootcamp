import 'package:flutter/material.dart';
import 'package:textfield_login_data_app/second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Property
  late TextEditingController userIdController; // user ID controller
  late TextEditingController userPwController; // user PW controller

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: userIdController,
              decoration: InputDecoration(
                labelText: '사용자 ID를 입력하세요'
              ),
            ),
            TextField(
              controller: userPwController,
              decoration: InputDecoration(
                labelText: 'Password를 입력하세요'
              ),
              obscureText: true, // 입력이 안보이게 *** 로 바뀜
            ),
            ElevatedButton(
              onPressed: _checkData, // 함수 만들때 _쓰면 좋음 다른거랑 안겹쳐서
              child: Text('Log In'),
            ),
          ],
        ),
      ),
    );
  }

  // Functions
  void _checkData(){
    if(userIdController.text.trim().isEmpty || userPwController.text.trim().isEmpty){
      errorSnackBar();
    }else{
      if(userIdController.text.trim() == 'apple' && userPwController.text.trim() == '4321'){
        _showDialog();
      }else{
        checkSnackBar();
      }
    }
  }

  void errorSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('사용자 ID와 암호를 입력하세요'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red, 
      )
    );
  }

  void _showDialog(){
    showDialog(
      context: context, 
      builder: (context) {
        return AlertDialog(
          title: Text('환영합니다'),
          content: Text('신분이 확인 되었습니다.'),
          actions: [
            TextButton(
              onPressed: () {
                String id = userIdController.text.trim();
                userIdController.text='';
                userPwController.text='';
                Navigator.of(context).pop();

                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) {
                      return Second(id: id,);
                    },
                  ),
                );
              }, 
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void checkSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('사용자 ID 또는 암호가 일치하지 않습니다.'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.amber[800], 
      )
    );
  }
}