import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Property
  late String title;
  late String image;
  late String switchText;
  late bool swtichValue;

  @override
  void initState() {
    super.initState();
    title = 'Smile';
    image = 'smile.png';
    switchText = 'Smile';
    swtichValue = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(backgroundImage: AssetImage('images/$image'),
            radius: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(switchText),
                Switch(
                  value: swtichValue, 
                  onChanged: (value) {
                    _switchAction();
                    swtichValue = value;
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Functions
  void _switchAction(){
    if(swtichValue==true){ 
      title = 'Pikachu';
      image = 'pikachu-1.jpg';
      switchText = 'Pikachu';
      swtichValue = false;
    }
    else {
      title = 'Smile';
      image = 'smile.png';
      switchText = 'Smile';
      swtichValue = true;
    }
      setState(() {});
  }

}