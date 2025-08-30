import 'dart:math';

import 'package:string_calculator_kata/string_calculator_kata.dart';
import 'package:test/test.dart';

void main() {
group("StringCalculator", (){
  final calculator = StringCalculator();
  test('empty string returns 0', (){
    expect(calculator.add(''), equals(0));
  });

  test('single number returns itself', (){
    expect(calculator.add('5'), equals(5));
  });

  test('two numbers, comma delimited, returns sum', (){
    expect(calculator.add('1,2'), equals(3));
  });

  test('multiple numbers, comma delimited, returns sum', (){
    expect(calculator.add('1,2,3,4,5'), equals(15));
  });

  test('multiple numbers, newline and comma as delimiter, returns sum', (){
    expect(calculator.add('1\n2,3'), equals(6));
  });

  test('custom delimiter', (){
    expect(calculator.add('//;\n1;2'), equals(3));
  });
});
}
