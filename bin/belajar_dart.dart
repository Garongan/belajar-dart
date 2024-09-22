import 'animal.dart';
import 'address_book.dart';
import 'bird.dart';
import 'rose.dart';
import 'duck.dart';

enum RainbowColor { red, orange, yellow, green, blue, indigo, violet }

enum Weather {
  sunny(15),
  cloudy(34),
  rain(69),
  storm(83);

  final int rainAmount;

  const Weather(this.rainAmount);

  @override
  String toString() =>
      "Today's weather forecast is $name with a $rainAmount% chance of rain";
}

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

  // inheritance
  var murray = Bird('Murray', 1, 1.8, 'black');
  murray.fly();
  murray.eat();

  // abstraction
  var rose = Rose('Rose', 2, 'red');
  rose.photosynthesis();
  rose.blossom();

  // enum
  print(RainbowColor.values); // print all of rainbow color values
  print(RainbowColor.green); // print data of enum by value
  print(RainbowColor.blue.name); // print name of enum by value
  print(RainbowColor.red.index); // print index of value in enum

  var weatherForecast = Weather.cloudy;

  // implement switch with enum value
  switch (weatherForecast) {
    case Weather.sunny:
      print("Today's weather forecast is sunny");
      break;
    case Weather.cloudy:
      print("Today's weather forecast is cloudy");
      break;
    case Weather.rain:
      print("Today's weather forecast is rain");
      break;
    case Weather.storm:
      print("Today's weather forecast is storm");
      break;
  }

  print(Weather.rain.rainAmount); // print custom attribute of weather
  print(weatherForecast); // call the toString() method from enum

  var donald = Duck('Donald', 18, 20, 'white-blue');
  donald.fly();
  donald.swim();
  donald.walk();

  var arielNoah = Musician();
  arielNoah.perform();
}

// multiple inheritance problem
// when class has two same method from parent
// can solved with mixins

abstract class Performer {
  void perform();
}

mixin Dancer implements Performer {
  @override
  void perform() {
    print('Dancing');
  }
}

mixin Singer implements Performer {
  @override
  void perform() {
    print('Singing');
  }
}

class Musician extends Performer with Dancer, Singer {
  void showTime() {
    perform(); // the last sequence of mixins will by execute
  }
}

