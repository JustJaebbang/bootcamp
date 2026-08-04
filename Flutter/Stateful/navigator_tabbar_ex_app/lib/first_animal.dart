import 'package:flutter/material.dart';
import 'package:navigator_tabbar_ex_app/animal_class.dart';

class FirstAnimal extends StatefulWidget {
  final List<AnimalType> list;
  const FirstAnimal({super.key, required this.list});

  @override
  State<FirstAnimal> createState() => _FirstAnimalState();
}

class _FirstAnimalState extends State<FirstAnimal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widget.list.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showDialog(
                context: context, 
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: Colors.white,
                    title: Text(widget.list[index].animalName),
                    content: Row(
                    children: [
                      Image.asset(
                        widget.list[index].imagePath,
                        width: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${widget.list[index].animalName}은 ${widget.list[index].kind}입니다.\n'
                        '${widget.list[index].animalName}은 ${widget.list[index].canFly ? "날 수 있습니다." : "날 수 없습니다."}'
                        ),
                      ]  
                    ),
                  );
                },
              );
            },
            child: Card(
              color: Colors.white,
              child: Row(
                children: [
                  Image.asset(
                    widget.list[index].imagePath,
                    width: 100,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    widget.list[index].animalName,
                  ),
                ],
              ),
            ),
          );
        },
      ), 
    );
  }
}