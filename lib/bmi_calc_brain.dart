import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String bmiResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else
      return 'Underweight';
  }

  String interpretation() {
    if (_bmi >= 25) {
      return 'Your body weight is higher than normal. Exercise more!!';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight. Good going!';
    } else {
      return 'Your body weight is lower than normal. Eat more!!';
    }
  }
}
