main(){
  //for(start,stop,step) -> 1,10,1
  for(int i = 1; i <= 10; i++){
    print(i);
  }

  // Exercise
  // 1부터 10까지의 합계
  int sum = 0;
  int startNum = 10;
  int endNum = 1000;

  for(int i=startNum; i<=endNum; i++){
    sum += i;
  }
  print('$startNum부터 $endNum까지의 합계는 $sum입니다.');

  // Exercise
  // 1부터 10까지의 수중 짝수의 합과 홀수의 합을 각각 구하라
  // (단, for 문은 1개)
  // 1부터 10까지의 수중 짝수의 합은 ___ 이고 홀수의 합은 ___ 입니다.

  int startn = 1;
  int endn = 10;
  int hnum = 0;
  int jnum = 0;

  for(int i=startn; i <= endn; i++){
    // 1.if
    // if(i%2==0){
    //   jnum+=i;
    // }
    // else{
    //   hnum+=i;
    // }

    // 2.switch
    switch (i%2){
      case 0:  jnum+=i;
      default: hnum+=i;
    }
  }

print('1부터 10까지의 수중 짝수의 합은 $jnum이고 홀수의 합은 $hnum입니다.');

// Exercise
// 1부터 100까지의 수중 2의 배수의 합계, 5의 배수의 합계, 10의 배수의 합계 구하기

startNum=1;
endNum=100;
int num2 = 0;
int num5 = 0;
int num10 = 0;

// 1. if
// for (int i = startNum; i <= endNum; i++){
//   if (i % 2 == 0 && i % 5 == 0){
//     num10 += i;
//     }
//   if (i % 2 == 0){
//     num2 += i;
//     }
//   if (i % 5 == 0){
//     num5 += i;
//   }
// }
// print('2의 배수 합계 : $num2');
// print('5의 배수 합계 : $num5');
// print('10의 배수 합계 : $num10');



// 2. 
for (int i=1; i<=100; i++){
  num2 += i%2==0 ?   i : 0;
  num5 += i%5==0 ?   i : 0;
  num10 += i%10==0 ? i : 0;
}
print('2의 배수 합계 : $num2');
print('5의 배수 합계 : $num5');
print('10의 배수 합계 : $num10');




// List를 반복문으로 처리하기
List<int> numList = [1,3,5,7,9];
for(int i=0; i<numList.length; i++){
  print(numList[i]);
}

// 합계 구하기
int sumList = 0;
for(int i=0; i<numList.length; i++){
  sumList += (numList[i]);
}
print(sumList);

sumList = 0;
for(int i in numList){
  sumList += i;
}

// while
int number = 1;
while(number <= 10){
  print(number);
  number++;
}

number = 1;
while(true){
  print(number);
  number++;
  if(number > 10){
    break;
  }
}

for(int i=0; i<numList.length; i++){
  if(numList[i] == 3){
    print(numList[i]);
    break;
  }
}

// continue
for(int i=0; i<numList.length; i++){
  if(numList[i] == 3){
    continue;
  }
  print(numList[i]);
}

// Exercise




}