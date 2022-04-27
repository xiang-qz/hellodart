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
  //生成字符串
  var sb = StringBuffer();
  sb
    ..write('Use a StringBuffer for ')
    ..writeAll(['efficient', 'string', 'creation'], ' ')
    ..write('.');

  var fullString = sb.toString();

  assert(fullString == 'Use a StringBuffer for efficient string creation.');
  // Here's a regular expression for one or more digits.
  var numbers = RegExp(r'\d+');

  var allCharacters = 'llamas live fifteen to twenty years';
  var someDigits = 'llamas live 15 to 20 years';

  // contains() can use a regular expression.
  assert(!allCharacters.contains(numbers));
  assert(someDigits.contains(numbers));

  // Replace every match with another string.
  var exedOut = someDigits.replaceAll(numbers, 'XX');
  assert(exedOut == 'llamas live XX to XX years');
}

// 集合 (https://dart.cn/guides/libraries/library-tour#collections)
void the_lists() {
  // Create an empty list of strings.
  var grains = <String>[];
  assert(grains.isEmpty);

// Create a list using a list literal.
  var fruits = ['apples', 'oranges'];

// Add to a list.
  fruits.add('kiwis');

// Add multiple items to a list.
  fruits.addAll(['grapes', 'bananas']);

// Get the list length.
  assert(fruits.length == 5);

// Remove a single item.
  var appleIndex = fruits.indexOf('apples');
  fruits.removeAt(appleIndex);
  assert(fruits.length == 4);

// Remove all elements from a list.
  fruits.clear();
  assert(fruits.isEmpty);

// You can also create a List using one of the constructors.
  var vegetables = List.filled(99, 'broccoli');
  assert(vegetables.every((v) => v == 'broccoli'));

  fruits = ['bananas', 'apples', 'oranges'];

// Sort a list.
  fruits.sort((a, b) => a.compareTo(b));
  assert(fruits[0] == 'apples');

  fruits = <String>[];

  fruits.add('apples');
  var fruit = fruits[0];
  assert(fruit is String);
  // Error: 'int' can't be assigned to 'String'
  // fruits.add(5);
}

void the_sets() {
  // Create an empty set of strings.
  var ingredients = <String>{};

// Add new items to it.
  ingredients.addAll(['gold', 'titanium', 'xenon']);
  assert(ingredients.length == 3);

// Adding a duplicate item has no effect.
  ingredients.add('gold');
  assert(ingredients.length == 3);

// Remove an item from a set.
  ingredients.remove('gold');
  assert(ingredients.length == 2);

// You can also create sets using
// one of the constructors.
  var atomicNumbers = Set.from([79, 22, 54]);
  assert(atomicNumbers.length == 3);

  ingredients = Set<String>();
  ingredients.addAll(['gold', 'titanium', 'xenon']);

// Check whether an item is in the set.
  assert(ingredients.contains('titanium'));

// Check whether all the items are in the set.
  assert(ingredients.containsAll(['titanium', 'xenon']));

  ingredients = Set<String>();
  ingredients.addAll(['gold', 'titanium', 'xenon']);

// Create the intersection of two sets.
  var nobleGases = Set.from(['xenon', 'argon']);
  var intersection = ingredients.intersection(nobleGases);
  assert(intersection.length == 1);
  assert(intersection.contains('xenon'));
}

void the_maps() {
  // Maps often use strings as keys.
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };

// Maps can be built from a constructor.
  var searchTerms = Map();

// Maps are parameterized types; you can specify what
// types the key and value should be.
  var nobleGases = Map<int, String>();

  nobleGases = {54: 'xenon'}; // 惰性气体

// Retrieve a value with a key.
  assert(nobleGases[54] == 'xenon');

// Check whether a map contains a key.
  assert(nobleGases.containsKey(54));

// Remove a key and its value.
  nobleGases.remove(54);
  assert(!nobleGases.containsKey(54));

  hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };

// Get all the keys as an unordered collection
// (an Iterable).
  var keys = hawaiianBeaches.keys;

  assert(keys.length == 3);
  assert(Set.from(keys).contains('Oahu'));

// Get all the values as an unordered collection
// (an Iterable of Lists).
  var values = hawaiianBeaches.values;
  assert(values.length == 3);
  assert(values.any((v) => v.contains('Waikiki')));
  // any （https://blog.csdn.net/qq_42351033/article/details/108161475）

  hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };

  assert(hawaiianBeaches.containsKey('Oahu'));
  assert(!hawaiianBeaches.containsKey('Florida'));

  var teamAssignments = <String, String>{};
  String pickToughestKid() {
    return "pickToughestKid";
  }

  teamAssignments.putIfAbsent('Catcher', () => pickToughestKid());
  assert(teamAssignments['Catcher'] != null);
}

void the_public_methods() {
  var coffees = <String>[];
  var teas = ['green', 'black', 'chamomile', 'earl grey'];
  assert(coffees.isEmpty);
  assert(teas.isNotEmpty);

  teas = ['green', 'black', 'chamomile', 'earl grey'];
  teas.forEach((tea) => print('I drink $tea'));

  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };
  hawaiianBeaches.forEach((k, v) {
    print('I want to visit $k and swim at $v');
    // I want to visit Oahu and swim at
    // [Waikiki, Kailua, Waimanalo], etc.
  });

  teas = ['green', 'black', 'chamomile', 'earl grey'];

  var loudTeas = teas.map((tea) => tea.toUpperCase());
  loudTeas.forEach(print);
  var loadTeas_str = loudTeas = teas.map((tea) => tea.toUpperCase()).toList();
  print(loadTeas_str);

  teas = ['green', 'black', 'chamomile', 'earl grey'];

// Chamomile is not caffeinated.
  bool isDecaffeinated(String teaName) => teaName == 'chamomile';

// Use where() to find only the items that return true
// from the provided function.
  var decaffeinatedTeas = teas.where((tea) => isDecaffeinated(tea));
// or teas.where(isDecaffeinated)

// Use any() to check whether at least one item in the
// collection satisfies a condition.
  assert(teas.any(isDecaffeinated));

// Use every() to check whether all the items in a
// collection satisfy a condition.
  assert(!teas.every(isDecaffeinated));
}

void collections() {
  print('\n');
  print('#' * 40);
  print('集合');
  print('#' * 40);

  the_lists();
  the_sets();
  the_maps();
  the_public_methods();
}

//uri (https://dart.cn/guides/libraries/library-tour#uris)
void uri(){
  print('\n');
  print('#' * 40);
  print('URI');
  print('#' * 40);
  //编码部分字符
  var uri = 'https://example.org/api?foo=some message';

  var encoded = Uri.encodeFull(uri);
  assert(encoded == 'https://example.org/api?foo=some%20message');

  var decoded = Uri.decodeFull(encoded);
  assert(uri == decoded);
  //编码所有字符
  var uri1 = 'https://example.org/api?foo=some message';

  var encoded1 = Uri.encodeComponent(uri1);
  assert(
      encoded1 == 'https%3A%2F%2Fexample.org%2Fapi%3Ffoo%3Dsome%20message');

  var decoded1 = Uri.decodeComponent(encoded1);
  assert(uri1 == decoded1);
  //解析uri
  var uri2 = Uri.parse('https://example.org:8080/foo/bar#frag');

  assert(uri2.scheme == 'https');
  assert(uri2.host == 'example.org');
  assert(uri2.path == '/foo/bar');
  assert(uri2.fragment == 'frag');
  assert(uri2.origin == 'https://example.org:8080');

  //构建uri
  var uri3 = Uri(
    scheme: 'https',
    host: 'example.org',
    path: '/foo/bar',
    fragment: 'frag');
assert(uri3.toString() == 'https://example.org/foo/bar#frag');
}

// 时间和日期 （https://dart.cn/guides/libraries/library-tour#dates-and-times）
void dates_and_times() {
  print('\n');
  print('#' * 40);
  print('时间和日期');
  print('#' * 40);

  // Get the current date and time.
  var now = DateTime.now();

// Create a new DateTime with the local time zone.
  var y2k = DateTime(2000); // January 1, 2000

// Specify the month and day.
  y2k = DateTime(2000, 1, 2); // January 2, 2000

// Specify the date as a UTC time.
  y2k = DateTime.utc(2000); // 1/1/2000, UTC

// Specify a date and time in ms since the Unix epoch.
  y2k = DateTime.fromMillisecondsSinceEpoch(946684800000, isUtc: true);

// Parse an ISO 8601 date.
  y2k = DateTime.parse('2000-01-01T00:00:00Z');

  // 1/1/2000, UTC
  y2k = DateTime.utc(2000);
  assert(y2k.millisecondsSinceEpoch == 946684800000);

// 1/1/1970, UTC
  var unixEpoch = DateTime.utc(1970);
  assert(unixEpoch.millisecondsSinceEpoch == 0);

  y2k = DateTime.utc(2000);

// Add one year.
  var y2001 = y2k.add(const Duration(days: 366));
  assert(y2001.year == 2001);

// Subtract 30 days.
  var december2000 = y2001.subtract(const Duration(days: 30));
  assert(december2000.year == 2000);
  assert(december2000.month == 12);

// Calculate the difference between two dates.
// Returns a Duration object.
  var duration = y2001.difference(y2k);
  assert(duration.inDays == 366); // y2k was a leap year.
}

void main(List<String> args) {
  numbers_collection_String_more();
  collections();
  uri();
  dates_and_times();
}
