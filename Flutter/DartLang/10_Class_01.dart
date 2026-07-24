import 'ThreeKingdoms3.dart';

main(){
  // Class 
  // Instance, 객체, Obeject 만들기
  // Class 이름  객체 이름 = 생성자이름(dart에선 Class 이름과 같음)
  ThreeKingdoms threeKingdoms = ThreeKingdoms(); 
  ThreeKingdoms threeKingdoms1 = ThreeKingdoms(); 
  

  print(threeKingdoms.name);
  print(threeKingdoms1.name);

  threeKingdoms.name = '조조';
  threeKingdoms1.sayName();

  // 생성자를 통한 객체 구성
  ThreeKingdoms2 threeKingdoms2 = ThreeKingdoms2('유비', '촉나라');
  threeKingdoms2.saySomething();

  // 외부파일에서 class 불러오기
  ThreeKingdoms3 threeKingdoms3 = ThreeKingdoms3('조조', '위나라');
  threeKingdoms3.saySomething();
}

// --- Class 만들기 ---
class ThreeKingdoms{
  // property, Field, 전역변수(Global variable)
  String name = "유비";

  // Constructor

  // Method
  void sayName(){
    print('내 이름은 ${this.name}입니다.');
  }
}

class ThreeKingdoms2 {
  // Property
  String? _name; // ? : null safety
  late String _nation; // late : 지금은 데이터 없는데 이따 넣어줄게 (초기값 주기 싫을 때, 없을 때)
  
  // Constructor
  ThreeKingdoms2(String name, String nation)
    : this._name = name,
      this._nation = nation;
  
  // Method
  void saySomething(){
    print('제 이름은 ${this._name}이고 조국은 ${this._nation}입니다.');
  }

}