main(){
  // 구구단 함수
  // void gugudan(int dan){
  //   print('>>>>$dan단<<<<');
  //   for (int i=1; i<=9; i++){
  //     print('$dan * $i = ${dan*i}');
  //   }
  // }

  // List<int> dan2 = [4,5,6];

  // List gugudan2(List<int> dan2){
  //   List result = [];
  //   for (int i in dan2){
  //     for (int j = 1; j<=9; j++){
  //       result.add('$i * $j = ${i*j}');
  //     }
  //   }
  //   return result;
  // }

  // // gugudan(4);

  // print(gugudan2(dan2));

  // 여기부터 선생님 풀이
  // void gugudan(int dan){
  //   List data = List.generate(9, (index) => index+1); // 이 방식 기억해두기
  //   for (int i in data){
  //     print('$dan * $i = ${dan*i}');
  //   }
  // }

  // 구구단 출력 : 구구단 결과를 넘겨주자

  // List gugudan3(int dan2){
  //   List data = List.generate(9, (index) => index+1);
  //   List result = [];
  //   for(int i in data){
  //     result.add('$dan2 * $i = ${dan2*i}');
  //   }
  //   return result;
  // }

  // 다시 내 풀이
  // 구구단 함수 : 단과 곱해지는 수 시작수와 끝수를 입력받아 구구단 출력

  // void gugudan3(int dan, int startnum, int endnum){
  //   for (int i = startnum; i <= endnum; i++){
  //     print('$dan X $i = ${dan*i}');
  //   }
  // }

  // gugudan3(3,4,8); // (단, 시작수, 끝수)

  // List gugudan4(int dan, int startnum, int endnum){
  //   List result = [];
  //   for (int i = startnum; i <= endnum; i++){
  //     result.add('$dan X $i = ${dan*i}');
  //   }
  //   return result;
  // }

  // print(gugudan4(3,4,8)); // (단, 시작수, 끝수)


  // 이 방법이 야무지다
  // void gugudan4(int dan, int startnum, int endnum){
  //   List data = List.generate(endnum-startnum+1, (index) => index+(startnum)); // 이거 꼭 쓰기
  //   for(int i in data){
  //     print('$dan X $i = ${dan*i}');
  //   }
  // }
  
  // gugudan4(3, 4, 8);


  // 구구단 함수 : 단의 결과값이 30 이상만 출력하기

  void gugudan5(int dan){
    List data = List.generate(9, (index) => index+1);
    for (int i in data){
      if (dan*i>=30){
        print('$dan X $i = ${dan*i}');
      }
    }
  }

  gugudan5(8);







}