import 'dart:io';

void main(List<String> arguments) {
  /*
  * variable fundamental
  * var is dynamic type of variable
  * there is so many type variable: Number, Strings, Booleans, Lists, Maps
  * Number: int, double, num, BigInt
  * String: String
  * Booleans: bool
  * Lists: List
  * Maps: Map
  * */

  var greetings = 'Hello dart'; // String data type
  print(greetings);

  var myNumber = 4; // integers data type
  print(myNumber);

  var age;
  // if variable not initialized the default value is null
  age = 24;
  print(age);

  var x; // this is dynamic data type
  x = 20;
  x = 'hello dart';
  print(x);

  // error assignment
  var y = 2;
  // error assignment data types
  // y = 'hello world';
  print(y);

  // get input from console
  stdout.write("Your name: "); // print to console without new line
  String name = stdin.readLineSync()!; // get input as string variable
  stdout.write("Your age: ");
  int inputAge = int.parse(stdin.readLineSync()!); // ! is for null safety, int.parse is for change input from String to integer
  print('Hello $name, and your age is $inputAge'); // print to console with new line

  /*
  * Numbers data type
  * number can added in int of double
  * int and double is sub type of num
  * int can assigned number from range -2^63 until 2^63-1
  * */

  var number = 2020;
  var hex = 0xDEADBEEF;
  var decimal = 1.2;
  var phi = 3.14;
  double withoutDecimal = 10; // we can write double variable without comma

  // data type conversion
  var eight = int.parse('8'); // string to int
  print(eight.runtimeType); // to get the type of variable

  var tenPointTwo = double.parse('10.2'); // string to double
  print(tenPointTwo.runtimeType);

  var eightToString = 8.toString(); // int to string
  print(eightToString.runtimeType);

  var piAsString = 3.14159.toStringAsFixed(2); // double to string and make two numbers after comma
  print(piAsString.runtimeType);

  // String data type
  String singleQuote = 'this is string';
  String doubleQuote = "this is also string";
  print('this is literal "this word inside double quote"');
  print('"I think it\'s great!" I answered confidently'); // \' make single quote inside string
  print("Windows path: C:\\Program Files\\Dart"); // make file url

  // String interpolation
  print('This is phi: $phi'); // insert variable in string
  print('1 + 2 = ${1 + 2}');
  print(r'Dia baru saja membeli komputer seharga $1,000.00'); // make raw string
  print('Dia baru saja membeli komputer seharga \$1,000.00');
  print('Hi \u2665'); // this is runes or unicode in dart

  // Booleans data type
  bool alwaysTrue = true;
  var alwaysFalse = false;
  var notTrue = !true; // this is not operator
  bool notFalse = !false;

  // branch condition
  if (true) {
    print("It's true");
  } else {
    print("It's false");
  }

  /*
  * arithmetic operator
  * +; -; *; /; ~/; %
  * / can return decimal or integer
  * ~/ only return integer
  * */
  var firstNumber = 2;
  var secondNumber = 3;
  var sum = firstNumber + secondNumber;
  print(sum);
  print(5 + 2); // int add = 7
  print(5 - 2); // int subtract = 3
  print(5 * 2); // int multiply = 10
  print(5 / 2); // double divide = 2.5
  print(5 ~/ 2); // int intDivide = 2
  print(5 % 2); // int modulo = 1
  firstNumber; // increment
  secondNumber--; // decrement
  sum *= 2; // sum = sum * 2

  /*
  * comparison operator
  * ==; !=; >; <; >=; <=
  * */

  if (1 >= 2){
    print("less than one");
  } else {
    print("more than one");
  }

  /*
  * logical operator
  * ||; &&; !
  * or; and; not
  * */

  if (1 <= 2 && 0 < 1){
    print("is one");
  } else {
    print("more than one");
  }

  /*
  * Exceptions
  * IOException
  * FormatException
  * */
  var a = 7;
  var b = 0;
  print(a / b); // will print infinity
  // print(a ~/ b); error, can't divide by zero

  try {
    print(a ~/ b);
  } on Exception {
    print("can't divide by zero");
  }

  // using try and catch
  try {
    print(a ~/ b);
  } catch (e, s) {
    print('Exception happened: $e');
    print('Stack trace: $s'); // print stack trace
  } finally {
    print("this operation will always execute");
  }
  
}
