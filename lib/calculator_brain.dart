import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});
  final int? weight;
  final int? height;
  late double _bmi;

  String calculateBmi() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You Have a higher than a normal body weight. Try to exercise more. আর একটু কম খা ভাই';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job! ভালই মেইন্টেইন করছ';
    } else {
      return 'You Have a lower than a normal body weight. You can eat a bit more. বেশি বেশি খা';
    }
  }
}
