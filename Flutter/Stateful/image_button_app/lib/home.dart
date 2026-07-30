import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Property
  late List<String> imageName;
  late int currentImage;

  @override
  void initState() {
    super.initState();
  
    imageName = [
      'flower_01.png',
      'flower_02.png',
      'flower_03.png',
      'flower_04.png',
      'flower_05.png',
      'flower_06.png',
    ];
    currentImage = 0;

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('무한 이미지 반복'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SimpleGestureDetector(
        onHorizontalSwipe: (direction) => _onHorizontalSwipe(direction),
        onVerticalSwipe: (direction) => _onVerticalSwipe(direction),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  imageName[currentImage],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  'images/${imageName[currentImage]}',
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        currentImage--;
                        if(currentImage < 0){
                          currentImage=imageName.length-1;
                        }
                        setState(() {});
                      }, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                      ),
                      child: Text('<< 이전'),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        currentImage++;
                        if(currentImage >= imageName.length){
                          currentImage=0;
                        }
                        setState(() {});
                      }, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                      ),
                      child: Text('다음 >>'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Function
  void _onHorizontalSwipe(SwipeDirection direction){
    if(direction==SwipeDirection.left){
      currentImage++;
      if(currentImage >= imageName.length){
        currentImage=0;
      }
    }else{
      currentImage--;
      if(currentImage < 0){
        currentImage=imageName.length-1;
      }
    }
      setState(() {});
  }

  void _onVerticalSwipe(SwipeDirection direction){
    if(direction==SwipeDirection.up){
      currentImage++;
      if(currentImage >= imageName.length){
        currentImage=0;
      }
    }else{
      currentImage--;
      if(currentImage < 0){
        currentImage=imageName.length-1;
      }
    }
      setState(() {});
  }

}