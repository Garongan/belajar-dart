class Animal {
  // clas property
  String _name = ''; // private property
  int _age = 0;
  double weight; // public property

  // class constructor
  Animal(this._name, this._age, this.weight);

  // named constructor
  Animal.weight(this.weight);

  // initializer list
  Animal.cat(this._name, this.weight) : _age = 2;

  // setter
  set name(String value) {
    _name = value;
  }

  String get name => _name;

  // getter
  int get age => _age;

  // class method
  void eat() {
    print('$_name is eating');
    weight += 0.2;
  }

  void sleep() {
    print('$_name is sleeping');
  }

  void poop() {
    print('$_name is pooping');
    weight -= 0.1;
  }
}