main(){
  // 구구단 중 5단 출력하기

//   for (int i=2; i<=9; i++){
//     for (int j=1; j<=9; j++){
//       print('$i X $j = ${j*i}');
    
//   }
// }

// Exercise : 구구단 2~9단중 짝수단과 짝수 곱해지는 수만 출력하기
// 
  for (int i=2; i<=9; i+=2){
    print('>>>>$i단<<<<');
    for (int j=2; j<=9; j+=2){
      print('$i X $j = ${j*i}');
    
  }
}

// Exercise : 구구단 2~9단 중 짝수단과 짝수 곱해지는 수의 결과를 List로 저장하여
// 해당 List의 합계 구하기
// 단, if문 사용금지

List<int> numList = [];

  for (int i=2; i<=9; i+=2){
    //print('>>>>$i단<<<<');
    for (int j=2; j<=9; j+=2){
      //print('$i X $j = ${j*i}');
    numList.add(j*i);
  }
}

int sum = 0;
int num = 0;

  for (int j in numList){
    sum += j;
    num++;
  }

  print('합계 : $sum');
  print('평균 : ${sum/num}');
  

















}