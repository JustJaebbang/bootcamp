import 'package:flutter/material.dart';
import 'package:listview_insert_gridview_app/model/animal_list.dart';

class FirstPage extends StatefulWidget {
  final List<AnimalList> list;
  const FirstPage({super.key, required this.list});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ), 
          itemCount: widget.list.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    width: 90,
                    height: 90,
                    child: Image.asset(
                      widget.list[index].imagePath,
                      width: 90,
                    ),
                  ),
                  Text(
                    widget.list[index].imageName,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}