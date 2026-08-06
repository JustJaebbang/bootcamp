import 'package:flutter/material.dart';
import 'package:listview_insert2_app/model/animal_list.dart';

class FirstPage extends StatefulWidget {
  final List<Animal> list;
  const FirstPage({super.key, required this.list});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: ListView.builder(
        itemCount: widget.list.length,
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,0,0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                    widget.list[index].imagePath,
                    ),
                    radius: 35,
                  ),
                ),
                Text(
                  '    ${widget.list[index].imageName}  /  ${widget.list[index].kind}',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}