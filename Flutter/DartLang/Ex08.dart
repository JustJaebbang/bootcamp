main(){
  Gugudan gugudan = Gugudan(4);
  gugudan.hdan();
}

class Gugudan{
  // Property
late int dan;

  // Constructor
Gugudan(int dan)
: this.dan = dan; 

  // Method
void hdan(){
  List data = List.generate(9, (index) => index+1);
  for (int i in data){
    // i%2==0 ? print('$dan X $i = ${dan*i}') : print('$dan X * = ${dan*i}');
    print('$dan X ${i%2==0 ? i : '*'} = ${dan*i}');
  }
}  

}