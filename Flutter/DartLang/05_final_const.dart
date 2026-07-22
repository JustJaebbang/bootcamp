main(){
  // final과 const
  String name1 = '유비';
  name1 = '장비';
  print(name1);

  final String name2 = '관우'; // final 붙이면 변수가 안바뀜

  const String name3 = '조자룡';


  // final은 실행시에 결정되는 값으로 설정됨
  // const는 결정을 하고 실행을 한다. final 보다 더 딱딱함

  final DateTime now1 = DateTime.now();
  print(now1);
}