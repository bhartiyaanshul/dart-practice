void main(){
  print(greetBob(Person('Anshul')));
  print(greetBob(Imposter()));
}

class Person{
  final String _name;

  Person(this._name);

  String greet(String who) => 'Hello, $who. I am $_name';
}

class Imposter implements Person{
  String get _name => '';

  String greet(String who) => 'Hello, $who Do you know me?';
}

String greetBob(Person person) => person.greet('bob');