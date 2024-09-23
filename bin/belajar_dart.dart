import 'package:belajar_dart/belajar_dart.dart' as belajar_dart;

void main(List<String> arguments) {
  /*
  * functional programming
  * pure functions => normal function with parameter and call it with argument
  * recursion => because in functional programming not implement concept for or while for iteration for iteration
  * immutable variables => we can't change variable value that already defined
  * */

  var x = 5;
  x = x + 1; // Example of not immutable variables
  print('sum of 2 and 5 is ${belajar_dart.sum(2, 5)}');
  print('fibonacci number of index 3 is ${belajar_dart.fibonacci(3)}');

  // anonymous function
  // var multiply = (int num1, int num2){
  //   return num1 * num2;
  // };
  var multiply = (int num1, int num2) => num1 * num2;

  // another declaration of anonymous function
  // divide(double num1, double num2){
  //   return num1 / num2;
  // }
  divide(double num1, double num2) => num1 / num2;

  // lambda function
  // Function printLambda = () {
  //   print('This is lambda function');
  // };
  Function printLambda = () => print('This is lambda function');

  // another declaration of lambda function
  printNewLambda() => print('This is lambda function from new declaration');

  print(
      'multiply number of 2 and 5 is ${multiply(2, 5)}'); // call the anonymous function
  print('number 2 divide by 2 is ${divide(2, 5)}');
  printLambda(); // call the lambda function
  printNewLambda();

  // high order function is using function as parameter
  // Option 1
  int Function(int num1, int num2) sum = (int num1, int num2) => num1 + num2;
  myHigherOrderFunction('Hello', sum);

  // Option 2
  myHigherOrderFunction('Hello', (num1, num2) => num1 + num2);

  var fibonacci = [0, 1, 1, 2, 3, 5, 8, 13];
  // using default high order function
  fibonacci.forEach((item) {
    print(item);
  });

  // Closures is function that can access variable inside lexical scope
  var closureExample = calculate(2);
  closureExample();
  closureExample();
}

void myHigherOrderFunction(
    String message, int Function(int num1, int num2) myFunction) {
  print(message);
  print(myFunction(3, 4));
}

Function calculate(base) {
  var count = 1;

  return () => print("Value is ${base + count++}"); // this function access variable count that inside of the lexical scope of Function calculate
}
