class Person{
  String name = '0';
  int age = 0;
}
void operators(){
  //算数运算符
  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); // Result is a double
  assert(5 ~/ 2 == 2); // Result is an int
  assert(5 % 2 == 1); // Remainder
  assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');
  int a=0;
  int b,c;
  b=a++;
  c=--b;
  print('a、b、c的值分别为：$a  $b  $c');
  //类型判断运算符
  var student = Person();
  (student as Person).name = "Jack";
  if(student is Person){
    student.age = 17;
  }
}
void main(){
  operators();
}
