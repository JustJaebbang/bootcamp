// Factorial 구하기
// 4! = 4*3*2*1

// 결과
/*
  4's factorial value = 24
*/

main(){
  int inputValue = 4;
  int sum = 1;

  for (int i = inputValue; i > 0; i--){
    sum *= i;
  }

  // for (int i = 1; i <= inputValue; i++){
  //   sum *= i;
  // }
  print('4\'s factorial value = $sum');
}