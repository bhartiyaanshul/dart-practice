void main() {
  integer();
  string();
  record();
  list();
  sets();
  maps();
  controlflow();
}

void integer() {
//   var x = 1;
//   var hex = 0xDEADBEEF;

//   var y = 1.1;
//   var exponents = 1.42e5;

  // String -> int
  var one = int.parse('1');
  assert(one == 1, "The number is equal");

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');
}

void string() {
//   var s1 = 'Single quotes work well for string literals.';
//   var s2 = "Double quotes work just as well.";
//   var s3 = 'It\'s easy to escape the string delimiter.';
//   var s4 = "It's even easier to use the other delimiter.";

//   print(s1.toUpperCase());

//   var s5 = '''
//   You can create
//   multi-line strings like this one.
//   ''';

//   var s = r'In a raw string, not even \n gets special treatment.';
}

void record() {
  var record = ('first', a: 2, b: true, 'last');

  print(record.$1);
  print(record.a);
  print(record.b);
  print(record.$2);
}

void list() {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);
}

void sets() {
  var elements = <String>{};
  var halogens = {'a', 'b', 'c'};
  elements.add('fluorine');
  elements.addAll(halogens);
  print(elements);
}

void maps() {
//   var gifts = {
//   'first': 'partridge',
//   'second': 'turtledoves',
//   'fifth': 'golden rings'
//   };

//   var nobleGases = {
//     2: 'helium',
//     10: 'neon',
//     18: 'argon',
//   };

  var gifts = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var nobleGases = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print(gifts);
  print(nobleGases);
}

void controlflow() {
  var year = 2010;
  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  while (year < 2016) {
    year += 1;
  }
}