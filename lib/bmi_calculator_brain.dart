import 'dart:math';

class BMICalculatorBrain {
  BMICalculatorBrain(
      {this.age, this.gender, this.height, this.weight, this.sex});

  final int height;
  final int weight;

  final int age;
  final String gender;
  final int sex;

  double _bmi;

  double _bf;

  String calculateBMI() {
    //calculate bmi value and convert to percentage
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  double calculateBMIPercentage() {
    //calculate bmi value and convert to percentage
    if (_bmi / 40 < 1) {
      return _bmi / 40;
    } else
      return 1;
  }

  String calculateBodyFat() {
    if (age <= 15) {
      _bf = (1.51 * _bmi) - (0.70 * age) - (3.6 * sex) + 1.4;
      print("below 15 BodyFat");
      print(_bf.toStringAsFixed(1));
      return _bf.toStringAsFixed(1);
    } else
      _bf = (1.39 * _bmi) - (0.16 * age) - (10.34 * sex) - 9.0;
    print("above 15 BodyFat");
    print(_bf.toStringAsFixed(1));
    return _bf.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 40) {
      return 'Obese Class 3';
    } else if (_bmi > 35) {
      return 'Obese Class 2';
    } else if (_bmi > 30) {
      return 'Obese Class 1';
    } else if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else if (_bmi > 16) {
      return 'Underweight';
    } else if (_bmi > 15) {
      return 'Severely underweight';
    } else {
      return 'Very severely underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
