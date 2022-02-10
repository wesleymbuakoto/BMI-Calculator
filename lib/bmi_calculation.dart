import 'dart:math';

class BMICalculation {

  BMICalculation({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Higher than Normal body weight';
    } else if (_bmi > 18.5) {
      return 'Normal body weight';
    } else {
      return 'Lower than normal body weight';
    }
  }

}