import 'animal.dart';
import 'flyable.dart';

class Bird extends Animal implements Flyable {
  final String furColor;

  // super constructor
  Bird(super.name, super.age, super.weight, this.furColor);

  @override
  void fly() {
    print('$name is flying');
  }
}
