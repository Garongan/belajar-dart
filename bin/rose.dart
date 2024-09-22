import 'plant.dart';

class Rose extends Plant {
  String flowerColor;

  Rose(super.name, super.age, this.flowerColor);

  void blossom() {
    print('flower of $name has bloomed');
  }

  @override
  void breathe() {
    // TODO: implement breathe
  }
}