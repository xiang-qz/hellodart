import 'dart:async';
import 'dart:io';
import 'dart:math';
//变量
void variables(){
    var name = "voryager I";
    var year = 1977;
    var antennaDiameter = 3.7;
    var flybyObjects = ['Jupter','Saturn','Uranus','Neptune'];
    var image = {
        'tags': ['Saturns'],
        'url': 'path//to//Saturn.jpg'
    };

    print(
        'name is $name, year is $year,antennaDiameter is $antennaDiameter,flybyObjects is $flybyObjects,image is $image'
    );
}
//流程控制
void control_flow_statements() {
  print('\n');
  print('#' * 40);
  print('控制流程');
  print('#' * 40);

  var year = DateTime.now().year;

  if (year >= 2001) {
    print('21s centry');
  } else if (year >= 1901) {
    print('20th centry');
  }

  var flybyObjects = ['a', 'b', 'c'];
  for (final object in flybyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  year = 2009;
  while (year < 2016) {
    year += 1;
    print(year);
  }
}
// 函数 
int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

bool is_hit(String line, String target) {
  return line.contains(target);
}

void functions() {
  print('\n');
  print('#' * 40);
  print('函数');
  print('#' * 40);

  var fib = fibonacci(8);
  print('fib 8 is $fib');

  var flybyObjects = [
    'hello',
    'abc',
    '123',
    'how do you do',
    'how are you'
  ];
  flybyObjects.where((name) => name.contains('you')).forEach(print);

  var hit_lines = flybyObjects.where((x) => is_hit(x, 'o'));
  for (var one in hit_lines) {
    print('one is $one');
  }
}
// 注释
void comments() {
  print('\n');
  print('#' * 40);
  print('注释');
  print('#' * 40);

  /// 这是一个文档注释。
  /// 文档注释用于为库、类以及类的成员添加注释。
  /// 像 IDE 和 dartdoc 这样的工具可以专门处理文档注释。
  /* 也可以像这样使用单斜杠和星号的注释方式 */
  print('comments prints nothing.');
}
// 导入
void imports() {
  print('\n');
  print('#' * 40);
  print('导入');
  print('#' * 40);

  var mypi = pi;
  print('pi is $mypi');

  var x = pi / 4;
  var y = sin(x);
  print('sin(pi/4) is $y');
}

Future<void> main(List<String> args) async {
  variables();
  control_flow_statements();
  functions();
  comments();
  imports();
}