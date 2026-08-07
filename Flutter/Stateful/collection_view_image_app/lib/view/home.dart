import 'package:collection_view_image_app/view/detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Property
  late List<String> imageList;

  @override
  void initState() {
    super.initState();
    // imageList = [
    //   'flower_01.png',
    //   'flower_02.png',
    //   'flower_03.png',
    //   'flower_04.png',
    //   'flower_05.png',
    //   'flower_06.png',
    // ];
    imageList = List.generate(
      6, 
      (index) => 'flower_0${index+1}.png',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flower Garden'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            ),
          itemCount: imageList.length, 
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Get.to(Detail(), arguments: imageList[index]),
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children:[ 
                        ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(20),
                        child: Image.asset(
                          'images/${imageList[index]}',
                          width: 110,
                          ),
                        ),
                        RotationTransition(
                          turns: AlwaysStoppedAnimation(-45/360),
                          child: Text(
                            'All rights reserved!',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      imageList[index],
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}