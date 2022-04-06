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
//内置类型
void builtinTypes(){
    num x=1;
    x +=2.5;
    print('x的值为$x');
    // String -> int
    var one = int.parse('1');
    assert(one == 1);
    // double -> String
    String piAsString = 3.14159.toStringAsFixed(2);
    assert(piAsString == '3.14');
    var s1 = 'string';
    "interpolation";
    var s2 = '''which is handy.''';
    print('Dart has $s1,'+s2);
    var list = [1, 2, 3];
    var list2 = [0, ...list];//...扩展操作符实现元素的插入
    assert(list2.length == 1);
    var set1 = {'A', 'B', 'C', 'D', 'E'};//创建set集合
    var set2 = <String>{};//创建空集合
    set2.add('B');//添加元素
    set2.addAll(set1);//添加set1中所有元素到set2
    assert(set2.length == 5);
    //Map类型
    var map1 ={
      'first' : 'A',
      'second' : 'B'
    };
    var map2 = Map<int,String>();//使用map构造器创建map
    map2[2] = "AB";
    map2[8] = "cdf";
    map2[6] = "添加键值对";
    assert(map2['2'] == 'AB');//查找键值对
    assert(map2['3'] == null);//查找键值对为空
    assert(map2.length == 3);
}
//函数
void function(){
    //可选参数与不可选参数
    String say(String from, String msg, [String? device]) {
      var result = '$from says $msg';
      if (device != null) {
        result = '$result with a $device';
      }
      return result;
    }
    assert(say('Bob', 'Howdy') == 'Bob says Howdy');
    assert(say('Bob', 'Howdy', 'smoke signal') ==
    'Bob says Howdy with a smoke signal');
    //将函数作为参数传递
    void printElement(int element) {
      print(element);
    }
    var nlist = [1, 2, 3];
    nlist.forEach(printElement);
    //将函数值赋给一个变量
    var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
    assert(loudify('hello') == '!!! HELLO !!!');
    //匿名函数
    const nlist1 = ['apples', 'bananas', 'oranges'];
    nlist1.forEach((item) {
      print('${nlist1.indexOf(item)}: $item');
    });
}
void foo() {} // A top-level function

class A {
  static void bar() {} // A static method
  void baz() {} // An instance method
}
void main(List<String> args){
    //变量
    variables();
    builtinTypes();
      Function x;

  // Comparing top-level functions.
  x = foo;
  assert(foo == x);

  // Comparing static methods.
  x = A.bar;
  assert(A.bar == x);

  // Comparing instance methods.
  var v = A(); // Instance #1 of A
  var w = A(); // Instance #2 of A
  var y = w;
  x = w.baz;

  // These closures refer to the same instance (#2),
  // so they're equal.
  assert(y.baz == x);

  // These closures refer to different instances,
  // so they're unequal.
  assert(v.baz != w.baz);
}