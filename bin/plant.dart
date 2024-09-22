abstract class Plant {
  String name;
  int age;

  Plant(this.name, this.age);

  void photosynthesis() {
    print('plant $name is photosynthesis');
  }

  void breathe(); // must be override in child class
}