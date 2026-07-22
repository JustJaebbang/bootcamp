main(){
  // 연산자
  // 자동 증감 연산자

  int num = 0;
  num += 1;
  num++;
  print(num);


  num--;
  print(num);
  
// Null Safety
int num1 = 10;
// int num2 = null;

// null을 수용가능한 변수를 선언
int? num2 = null;

num2 ??= 10; // default 값
print(num2);


// 조건 연산자 
int num3 = 10;
int num4 = 5;

print(num3 < num4);
print(num3 > num4);
print(num3 <= num4);
print(num3 >= num4);
print(num3 == num4);
print(num3 != num4);

print(num3 is int);
print(num3 is String);
print(num3 is bool);
print(num3 is! String);

// 논리 연산자 : and(&&) , or(||)
bool result = 12>10 && 1>0;
print(result);

result = 10>5 || 1>2;
print(result);


}