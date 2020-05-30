import 'dart:math';

class BfCalculatorBrain {
  BfCalculatorBrain({this.bmi, this.age, this.gender, this.sex});
  final int bmi;
  final int age;
  final String gender;
  final int sex;

  double _bf;

  String calculateBodyFat() {
    //calculate bmi value and convert to percentage
    if (age <= 15) {
      _bf = (1.51 * bmi) - (0.70 * age) - (3.6 * sex) + 1.4;
    } else
      _bf = (1.20 * bmi) - (0.23 * age) - (10.8 * sex) - 5.4;
    return _bf.toString();
  }

  // double calculateBMIPercentage() {
  //   if (_bmi / 40 < 1) {
  //     return _bmi / 40;
  //   } else
  //     return 1;
  // }

  // String getResult() {
  //   if (_bmi >= 40) {
  //     return null;
  //   } else if (_bmi > 35) {
  //     return null;
  //   } else {
  //     return 'Very severely underweight';
  //   }
  // }

  // String getInterpretation() {
  //   if (_bmi >= 25) {
  //     return 'You have a higher than normal body weight. Try to exercise more.';
  //   } else if (_bmi >= 18.5) {
  //     return 'You have a normal body weight. Good job!';
  //   } else {
  //     return 'You have a lower than normal body weight. You can eat a bit more.';
  //   }
  // }
}
