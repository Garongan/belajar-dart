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
  if (now > openHours && now < closeHours){
    print('We are open');
  } else {
    print('We are close');
  }

  var score = 85;

  print('Nilai Anda: ${calculateScore(score)}');

  var shopStatus = now > openHours ? "Hello, we're open" : "Sorry, we've closed";

  var name;
  var buyer = name ?? 'user';
  print(buyer);
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