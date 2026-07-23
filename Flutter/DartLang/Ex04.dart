// 입력한 숫자의 한자릿수 정수의 합 구하기
// 입력숫자 : 12345678

// 결과
/*
  sum of 12345678 = 36
*/

main(){
  int inputValue = 12345678;
  int sum = 0;

  // for (int i=10; i<inputValue; i*=10){
  //   sum += (inputValue%i);
  //   if (inputValue%i>=9){
  //     sum += inputValue~/10;
  //   }
  // }
  // print(sum);

  int calcValue = inputValue;
  int remainder = 0;
  
  while(calcValue != 0){
    remainder = calcValue % 10;
    sum += remainder;
    calcValue = calcValue ~/ 10;
  }

  print('sum of $inputValue = $sum');
}