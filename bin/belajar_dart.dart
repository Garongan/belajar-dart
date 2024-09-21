import 'animal.dart';

void main(List<String> arguments) {
  // to create new object from class
  var sheep = Animal('Shaun', 18, 18.5);
  sheep.eat();
  print(sheep.weight);
  sheep.poop();
  sheep.sleep();
  print(sheep.weight);

  var cat = Animal.cat("Coki", 18.5);
  cat.sleep();
  print(cat.age);
}
