
main(){
  // 결과 : 1부터 10까지의 합은 55 입니다.
  int startnum = 1; // 시작수
  int endnum = 10; // 끝수

  Calc calc = Calc(startnum,endnum);
  int sum = calc.sumCalc();
  print('$startnum부터 $endnum까지의 합은 $sum입니다.');
}

class Calc{
  // Property
  late int startnum;
  late int endnum;

  // Constructor
  Calc(int startnum,int endnum)
  : this.startnum = startnum,
    this.endnum = endnum;
  
  
  // Method
  // 기본 for 문
  // int sumCalc(){
  //   int numsum = 0;
  //   for (int i=startnum; i<=endnum; i++){
  //     numsum += i;
  //   }
  //   return numsum;
  // }

  // for in 문
  int sumCalc(){
    int numsum = 0;
    List data = List.generate(endnum-startnum+1, (index) => index+startnum);
    for (int i in data){
      numsum += i;
    }
    return numsum;
  }

}





