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
  });
}

