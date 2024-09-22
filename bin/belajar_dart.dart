import 'animal.dart';
import 'address_book.dart';

void main(List<String> arguments) {
  // to create new object from class
  var sheep = Animal('Shaun', 18, 18.5);
  sheep.eat();
  print(sheep.weight);
  sheep.poop();
  sheep.sleep();
  print(sheep.weight);

  var cat = Animal.cat('', 18.5)
  ..name = 'Coki' // performing cascade operator to call property
  ..eat(); // performing cascade operator to call method
  cat.sleep();
  print(cat.age);

  final addressBook = (AddressBookBuilder()
    ..name = 'jenny'
    ..email = 'jenny@example.com'
    ..phone = '415-555-0100')
      .build();
  print(addressBook.name);
}
