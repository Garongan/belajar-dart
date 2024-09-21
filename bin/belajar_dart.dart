import 'dart:io';

import 'package:belajar_dart/belajar_dart.dart' as belajar_dart;

void main(List<String> arguments) {
  // conditional control flow
  var isRaining = true;
  print('prepare to go office');
  if (isRaining) {
    print("Oh it's raining bring umbrella");
  } else {
    print('walk');
  }

  var openHours = 7;
  var closeHours = 20;
  var now = 8;
  if (now > openHours && now < closeHours) {
    print('We are open');
  } else {
    print('We are close');
  }

  var score = 85;

  print('Nilai Anda: ${calculateScore(score)}');

  var shopStatus =
      now > openHours ? "Hello, we're open" : "Sorry, we've closed";

  var name;
  var buyer = name ?? 'user';
  print(buyer);

  // for loops
  for (int i = 1; i < 10; i++) {
    print(i);
  }

  // star pyramid
  for (int i = 1; i <= 10; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("*");
    }
    print("");
  }

  // while loop and do while loop
  var i = 1;
  while (i <= 10) {
    print('$i in while loop');
    i++;
  }

  // do while loop
  do {
    print('$i in do while loop');
    i++;
  } while (i <= 20);

  // challenge reverse pyramid
  var j = 10;
  var k = 1;
  while (j >= 1) {
    k = 1;
    while (k <= j) {
      stdout.write("*");
      k++;
    }
    print("");
    j--;
  }

  // break and continue in looping

  // break is for stop the looping when condition meet
  // bilangan prima di bawah 100
  var primeNumbers = [
    2,
    3,
    5,
    7,
    11,
    13,
    17,
    19,
    23,
    29,
    31,
    37,
    41,
    43,
    47,
    53,
    59,
    61,
    67,
    73,
    79,
    83,
    89,
    97
  ];

  var searchNumber = 13;
  print('Bilangan prima di antara 1-100: $searchNumber');

  for (int i = 0; i < primeNumbers.length; i++) {
    if (searchNumber == primeNumbers[i]) {
      print('$searchNumber adalah bilangan prima ke-${i + 1}');
      break;
    }
    print('$searchNumber != ${primeNumbers[i]}');
  }

  // continue is for skip loop iteration when condition meet
  for (int i = 1; i <= 10; i++) {
    if (i % 3 == 0) {
      continue;
    }
    print(i);
  }

  // switch case
  final number = 1;
  final number2 = 2;
  final operator = "+";

  switch (operator) {
    case '+':
      print('$number + $number2 = ${number + number2}');
      break;
    case '-':
      print('$number - $number2 = ${number - number2}');
      break;
    default:
      print("operator not found");
  }
}

String calculateScore(num score) {
  if (score > 90) {
    return 'A';
  } else if (score > 80) {
    return 'B';
  } else if (score > 70) {
    return 'C';
  } else if (score > 60) {
    return 'D';
  } else {
    return 'E';
  }
}
