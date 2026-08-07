// 영웅 검색 화면
import 'package:collection_view_label_app/view/detail_hero.dart';
import 'package:collection_view_label_app/view/insert_hero.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QueryHero extends StatefulWidget {
  const QueryHero({super.key});

  @override
  State<QueryHero> createState() => _QueryHeroState();
}

class _QueryHeroState extends State<QueryHero> {
  // Property
  late List<String> heroList;

  @override
  void initState() {
    super.initState();
    heroList = [
      '유비',
      '관우',
      '장비',
      '조조',
      '여포',
      '초선',
      '손견',
      '장양',
      '손책',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('삼국지 인물'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Get.to(InsertHero())!.then((value) => rebuildHero(value.toString())), // then에서 value에 받아온 result가 들어있음
            icon: Icon(Icons.add_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: heroList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, //<<<<<< 한줄을 몇개로 나눌건지
            mainAxisSpacing: 10, // 축 간격
            crossAxisSpacing: 10, // 다른 축간격 
            ), 
          itemBuilder: (context, index) {
            return Container(
              color: Colors.amber,
              child: GestureDetector(
                // arguments로 데이터를 가져갈 수 있다!!!!
                onTap: () => Get.to(DetailHero(), arguments: heroList[index]),
                child: Card(
                  color: Colors.indigoAccent[400],
                  child: Center(
                    child: Text(
                      heroList[index],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // Functions
  void rebuildHero(String value){
    if(value != ''){
      heroList.add(value);
    }
    setState(() {});
  }
}