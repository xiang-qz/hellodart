//import 'dart:math'
// 数字、集合、字符串等（https://dart.cn/guides/libraries/library-tour#dartcore---numbers-collections-strings-and-more）
void numbers_collection_String_more() {
  print('数字、集合、字符串等');
  print('#' * 40);
  assert(int.parse('42') == 42);
  assert(int.parse('0x42') == 66);
  assert(double.parse('0.50') == 0.5);

  assert(int.parse('42', radix: 16) == 66);

  assert(42.toString() == '42');
  assert(123.456.toString() == '123.456');
  // Specify the number of digits after the decimal
  assert(123.456.toStringAsFixed(1) == '123.5');
  // Specify the number of significant figures.
  assert(123.456.toStringAsPrecision(2) == '1.2e+2');
  assert(double.parse('1.2e+2') == 120.0);

  assert('how are you ?'.contains('are'));
  assert('how are you ?'.startsWith('how'));
  assert('how are you ?'.endsWith('you'));
  var indexofmeet = 'nice to meet you?'.indexOf('meet');
  print('Index of meet is $indexofmeet');
  assert('nice to meet you?'.substring(5, 6) == 'to');

  // Split a string using a string pattern.
  var parts = 'nice to meet you'.split(' ');
  print('parts 中元素为：');
  parts.forEach((element) {
    print('${parts.indexOf(element)} : $element');
  });

  // Get a UTF-16 code unit (as a string) by index.
  assert('nice to meet you'[5] == 't');

  // Use split() with an empty string parameter to get
  // a list of all characters (as Strings); good for iterating.
  for (final char in 'hello'.split('')) {
    print(char);
  }
  // Get all the UTF-16 code units in the string.
  var codeUnitList = 'Never odd or even'.codeUnits.toList();
  assert(codeUnitList[0] == 78);
  print('v\'s UTF-16 code is $codeUnitList[2]');

  // Convert to uppercase.
  assert('web apps'.toUpperCase() == 'WEB APPS');

  // Convert to lowercase.
  assert('WEB APPS'.toLowerCase() == 'web apps');

  // Trim a string.
  assert('  hello  '.trim() == 'hello');

  // Check whether a string is empty.
  assert(''.isEmpty);

  // Trim a string.
  assert('  hello  '.trim() == 'hello');

  var greetingTemplate = 'Hello, NAME!';
  var greeting = greetingTemplate.replaceAll(RegExp('NAME'), 'Bob');

  // greetingTemplate didn't change.
  assert(greeting != greetingTemplate);


}

void main(List<String> args) {
  numbers_collection_String_more();
}
