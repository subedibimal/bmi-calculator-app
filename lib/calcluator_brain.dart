import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(
      {required this.heightFt, required this.heightInch, required this.weight});
  final int heightFt;
  final int heightInch;
  final int weight;
  double _bmi = 0.0;

  String calculateBMI() {
    double height = ((heightFt * 12) + heightInch) * 2.54;
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try to excercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have lower than normal body weight. You can eat a bit more.';
    }
  }
}
