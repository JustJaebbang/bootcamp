import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  // Property
  late String _image;

  @override
  void initState() {
    super.initState();
    _image = Get.arguments ?? '__';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_image),
        centerTitle: true,
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(20),
          child: Image.asset(
            'images/$_image',
            width: 300,
          ),
        ),
      ),
    );
  }
}