// 구구단 출력

main(){
  Gugudan gugudan = Gugudan(5);
  gugudan.gugudanprint();
}

class Gugudan{
  // Property
  late int dan;

  // Constructor
  Gugudan(int dan)
  : this.dan = dan;

  // Method
  void gugudanprint(){
    List data = List.generate(9, (index) => index+1);
    for (int i in data){
      print('$dan X $i = ${dan*i}');
    }
  }
}