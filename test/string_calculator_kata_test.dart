import 'dart:math';

import 'package:string_calculator_kata/string_calculator_kata.dart';
import 'package:test/test.dart';

void main() {
group("StringCalculator", (){
  final calculator = StringCalculator();
  test('empty string returns 0', (){
    expect(calculator.add(''), equals(0));
  });
});
}
