import 'bird.dart';
import 'ability.dart';

class Duck extends Bird with Walkable, Flyable, Swimmable {
  Duck(super.name, super.age, super.weight, super.furColor);
}
