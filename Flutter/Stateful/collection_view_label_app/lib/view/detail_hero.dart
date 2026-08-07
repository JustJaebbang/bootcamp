// 영웅 내용 보는 화면
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailHero extends StatefulWidget {
  const DetailHero({super.key});

  @override
  State<DetailHero> createState() => _DetailHeroState();
}

class _DetailHeroState extends State<DetailHero> {
  // Property
  late String heroName;

  @override
  void initState() {
    super.initState();
    heroName = Get.arguments ?? '__';
    // Get.arguments 가 null 이면 __를 주고 아니면 들어온대로 준다
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('인물 보기'),
      ),
      body: Center(
        child: Text(
          heroName,
        ),
      ),
    );
  }
}