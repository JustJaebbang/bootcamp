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
  late String flowerText;

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
    flowerText = imageName[currentImage];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[600],
      appBar: AppBar(
        title: Text('Image Swiping'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SimpleGestureDetector(
        onHorizontalSwipe: (direction) => _onHorizontalSwipe(direction),
        onVerticalSwipe: (direction) => _onVerticalSwipe(direction),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  currentImage%2==0 ? flowerText:'',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Image.asset(
                'images/${imageName[currentImage]}',
                width: 350,
              ),
              Text(
                currentImage%2==1 ? flowerText:'',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Functions
  void _onHorizontalSwipe(SwipeDirection direction){
    if(direction == SwipeDirection.left){
      currentImage++;
      if(currentImage >= imageName.length){
        currentImage=0;
      }
    }else {
      currentImage--;
      if(currentImage < 0){
        currentImage = imageName.length-1;
      }
    }
      setState(() {});
  }

  void _onVerticalSwipe(SwipeDirection direction){
    if (direction == SwipeDirection.up){
      currentImage++;
      if(currentImage >= imageName.length){
        currentImage=0;
      }
    }else{
      currentImage--;
      if(currentImage < 0){
        currentImage = imageName.length-1;
      }
    }
    setState(() {});
  }







}