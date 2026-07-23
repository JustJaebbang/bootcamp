// List의 최대값과 최대값의 위치 구하기
// 입력 숫자 : 11,12,13,14,15

// 결과
/*
  숫자들 중 최대값은 15이고 5번째 값 입니다.
*/


main(){

List<int> numList = [11,12,13,14,15];
int answer = numList[0];
int num = 0;

for (int i=0; i<numList.length; i++){
  if (answer < numList[i]){
    answer = numList[i];
    num = i+1;
  } 
}

print('숫자들 중 최대값은 $answer이고 $num번째 값입니다.');

// List num = [11,12,13,14,15];
// int maxValue = num[0];
// int location = 0;

// for (int i=0; i<num.length; i++){
//   if(num[i] > maxValue){
//     maxValue = num[i];
//     location = i+1; 
//   }
// }
// print('숫자들 중 최대값은 $maxValue이고 $location번째 값입니다.');
}