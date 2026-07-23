// List를 이용해서 5보다 작은 숫자만 새로운 List에 생성하기
// 입력숫자 : 1,1,2,3,5,8,13,21,34,55,89

// 결과
/*
  [1,1,2,3]
*/


main(){

List numList = [1,1,2,3,5,8,13,21,34,55,89];
List answerList = [];

for (int i in numList){
  // 1. if
  // if (i<5){
  //   answerList.add(i);
  //   }
  // }

  // 2. 삼항연산자
  // i<5 ? answerList.add(i) : 0;
    

  // 3. switch
  switch (i~/5){
    case 0: answerList.add(i);
    default: 0;
  }

  // 4. One Line coding
  // print([for(int i in numList) if(i<5) i]);
}
  print(answerList);








}