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


Future<void> main(List<String> args) async {
  variables();
  control_flow_statements();
}