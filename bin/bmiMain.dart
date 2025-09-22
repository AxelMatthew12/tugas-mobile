import 'package:tugas/bmifunction.dart';

void main(){
  double weight = 45;
  double height = 1.9;

  double bmi = bmifunction(weight, height);
  print('Your BMI is: ${bmi.toStringAsFixed(2)}');
}