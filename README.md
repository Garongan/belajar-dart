Effective dart:
- DO name types using UpperCamelCase. Class, enum, typedef, and type parameter

```dart
abstract class Animal {}
abstract class Mammal extends Animal {}
mixin Flyable {}
class Cat extends Mammal with Walkable {}
```
- DON’T use prefix letters.

```dart
var instance;  // good
var mInstance;  // bad
```
- PREFER starting function or method comments with third-person verbs.

```dart
// Returns `true` if [username] and [password] inputs are valid.
bool isValid(String username, String password) { }
```
- PREFER a noun phrase for a non-boolean property or variable.

```dart
// Good
cat.furColor;
calculator.firstNumber;
list.length;
 
// Bad
list.deleteItems;
```

- PREFER boolean variable, using non-imperative

```dart
list.isEmpty
dialog.isOpen
```

- DO use ?? to convert null to a boolean value.

```dart
if(stock?.isEnough) {
  print('Making you a cup of coffee...');
}
// the code above will return exception if the stock is null, then using
stock?.isEnough ?? false;
```

- AVOID using curly braces in interpolation when not needed.

```dart
// good example
print('Hi, $name, You are ${thisYear - birthYear} years old.');
// bad example
print('Hi, ${name}, You are ${thisYear - birthYear} years old.');
```

- PREFER async/await over using raw futures.

```dart
// raw future
void main() {
  getOrder().then((value) {
    print('You order: $value');
  })
  .catchError((error) {
    print('Sorry. $error');
  });
  print('Getting your order...');
}
 
 
// async-await
void main() async {
  print('Getting your order...');
  try {
    var order = await getOrder();
    print('You order: $order');
  } catch (error) {
    print('Sorry. $error');
  }
}
```

- CONSIDER making the code read like a sentence.

```dart
// “If store is open ...”
If (store.isOpen)
 
// “hey garfield, eat!”
garfield.eat();
 
// Bad example
// Ambiguous apakah memerintahkan toko untuk tutup atau mendapatkan status dari toko
If (store.close)
```

- CONSIDER using function type syntax for parameters.

```dart
List filter(bool predicate(item)) { }
// after dart version 2, we can use
List filter(Function predicate) { }  // function type syntax
```

- PREFER using lowerCamelCase for constant names.

```dart
const pi = 3.24;
final daysOfWeek = 7;
```

- DO initialize fields at their declaration when possible.

```dart
// good example
var openHours = 9;
// bad example
var closedHours;
closedHours = 20;
```