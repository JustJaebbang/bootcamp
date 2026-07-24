// Factorial 구하기
// 4! = 4*3*2*1

// 결과
/*
  4's factorial value = 24
*/

main(){
  // int inputValue = 4;
  // int sum = 1;

  // for (int i = inputValue; i > 0; i--){
  //   sum *= i;
  // }

  // // for (int i = 1; i <= inputValue; i++){
  // //   sum *= i;
  // // }
  // print('4\'s factorial value = $sum');



// 입력한 숫자의 한자릿수 정수의 합 구하기
// 입력숫자 : 12345678

// 결과
/*
  sum of 12345678 = 36
*/
  int inputValue = 123456789123;
  int calcValue = inputValue;
  int sum = 0;
  // int remainder= 0;

  while(calcValue != 0){
    sum += calcValue%10;
    calcValue = calcValue~/10;
  }
  
  print(sum);
}