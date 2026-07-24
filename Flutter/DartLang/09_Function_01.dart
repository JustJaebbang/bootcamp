main(){
  // Function의 필요 이유
  // List<int> list1 = [1,3,5,7,9];
  // int sum = 0;

  // for(int i in list1){
  //   sum += i;
  // }

  // print('합계 : $sum');

  // List<int> list2 = [10,30,50,70,90];
  // int sum2 = 0;

  // for(int i in list2){
  //   sum2 += i;
  // }

  // print('합계 : $sum2');

  // Function으로 관리하자
  // void addList(){ // return 이 없으면 void 
  //   List<int> list1 = [1,3,5,7,9];
  //   int sum = 0;

  //   for(int i in list1){
  //     sum += i;
  //   }

  //   print('합계 : $sum');
  // }

  // addList();

  List<int> list1 = [1,3,7,9];
  List<int> list2 = [10,30,50];
  List<int> list3 = List.generate(100, (index) => index + 2,);
  
  // void addList2(List list1){ // return 이 없으면 void 
  //   int sum = 0;

  //   for(int i in list1){
  //     sum += i;
  //   }

  //   print('합계 : $sum');
  // }

  // addList2(list1);
  // addList2(list2);
  // addList2(list3);

  print('-----------------------------------');

  // 함수의 타입(지금은 int)은 return을 뭐로 주느냐에 따라 다름
  // return 이 없으면 void
  int addList3(List list1){ // return 이 없으면 void 
    int sum = 0;

    for(int i in list1){
      sum += i;
    }

  return sum;
  }
  
  print('합계 : ${addList3(list1)}');
  print('합계 : ${addList3(list2)}');
  print('합계 : ${addList3(list3)}');
















}
