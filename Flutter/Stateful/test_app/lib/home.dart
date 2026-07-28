import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Property
  late String title ;
  late Color appBarColor;
  late String content ;
  late String path;
  late bool check;
  late int taps;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    title = 'Smile';
    appBarColor = Colors.amber;
    content = 'OK';
    path = 'images/smile.png';
    check = true;
    taps = 0;
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: appBarColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(path,),
              radius: 100,
            ),
            ElevatedButton(
              onPressed: (){
                taps++;
                if (check && taps%5==0){
                  taps--;
                  Pikachu();
                  print(taps);
                  print(check);
                }
                else{
                  Smile();
                  print(taps);
                  print(check);
                }
              }, 
              child: Text(content),
            ),
          ],
        ),
      ),
    );
  }

  // Function
  void Pikachu(){
    title = 'Pikachu';
    appBarColor = Colors.green;
    content = '네 알겠습니다.';
    path = 'images/pikachu-1.jpg';
    check = false;
    print(title);
    setState(() {});
  }

  void Smile(){
    title = 'Smile';
    appBarColor = Colors.amber;
    content = 'OK';
    path = 'images/smile.png';
    check = true;
    print(title);
    setState(() {});
  }  
}