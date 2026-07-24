main(){
  Gugudan gugudanEven = Gugudan(4);
  gugudanEven.gugudanPrint();
  print('----------------------------');
  Gugudan gugudanOdd = Gugudan(5);
  gugudanOdd.gugudanPrint();
}

class Gugudan{
  // Property
  late int dan;

  // Constructor
  Gugudan(int dan)
  : this.dan = dan;

  // Method
  void gugudanPrint(){
    List data = List.generate(9, (index) => index+1);
    print('****$dan단****');
    for (int i in data){
      // if (dan%2==0){
      //   print('$dan X ${i%2==0 ? '*' : i} = ${dan*i}');
      // }
      // else {
      //   print('$dan X ${i%2==1 ? '*' : i} = ${dan*i}');
      // }

      // dan%2==0 ? print('$dan X ${i%2==0 ? '*' : i} = ${dan*i}') : print('$dan X ${i%2==1 ? '*' : i} = ${dan*i}');
    
      print('${dan%2==0 ? "$dan X ${i%2==0 ? '*' : i} = ${dan*i}" : "$dan X ${i%2==1 ? '*' : i} = ${dan*i}" }');
    }
  }

}