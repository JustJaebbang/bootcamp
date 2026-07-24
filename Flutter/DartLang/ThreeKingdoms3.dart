class ThreeKingdoms3 {
  // Property
  String? _name; // ? : null safety
  late String _nation; // late : 지금은 데이터 없는데 이따 넣어줄게 (초기값 주기 싫을 때, 없을 때)
  
  // Constructor
  ThreeKingdoms3(String name, String nation)
    : this._name = name,
      this._nation = nation;
  
  // Method
  void saySomething(){
    print('제 이름은 ${this._name}이고 조국은 ${this._nation}입니다.');
  }
}