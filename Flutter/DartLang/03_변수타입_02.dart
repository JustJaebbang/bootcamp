main(){
  // 문자열(string)
  String str1 = '유비';
  String str2 = '장비';

  // 문자열 연결 방식으로 출력해보자
  print(str1 + ' : ' + str2);

  // 문자열 보간법(String Interpolation)
  print('$str1 : $str2');
  
  // 정수의 문자열 보간법
  int intNum1 = 170;
  int intNum2 = 70;

  print('intNum1과 intNum2의 합은 ${intNum1 + intNum2} 입니다.');
}