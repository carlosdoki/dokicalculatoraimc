import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'EXCESSO DE PESO';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'ABAIXO DO PESO';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Você tem um peso corporal acima do normal. Tente se excercitar mais.';
    } else if (_bmi >= 18.5) {
      return 'Você tem um peso corporal normal. Bom trabalho!';
    } else {
      return 'Você tem um peso corporal abaixo do normal. Você pode comer um pouco mais.';
    }
  }
}
