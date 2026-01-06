import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_assessment/string_calculator.dart';

void main() {
  group('StringCalculator', () {
    late StringCalculator calculator;

    setUp(() {
      calculator = StringCalculator();
    });

    test('returns 0 for empty string', () {
      expect(calculator.add(''), equals(0));
    });

    test('returns number for single number string', () {
      expect(calculator.add('1'), equals(1));
    });

    test('returns sum of two comma-separated numbers', () {
      expect(calculator.add('1,5'), equals(6));
    });

    test('returns sum of any amount of numbers', () {
      expect(calculator.add('1,2,3,4,5'), equals(15));
    });

    test('allows new lines as delimiters', () {
      expect(calculator.add('1\n2,3'), equals(6));
    });

    test('supports custom delimiter', () {
      expect(calculator.add('//;\n1;2'), equals(3));
    });
  });
}

