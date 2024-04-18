import "dart:math";

class BmiBrain {
  final int height;
  final int weight;

  BmiBrain({
    required this.height,
    required this.weight,
  });

  double bmiResult() {
    double result;
    result = weight / pow(height / 100, 2);
    return result;
  }

  String getResult() {
    if (bmiResult() >= 25) {
      return "Overweight";
    } else if (bmiResult() > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (bmiResult() >= 25) {
      return "You have a higher than normal body weight, try to exercise more.";
    } else if (bmiResult() > 18.5) {
      return "You have a normal body weight, good job!";
    } else {
      return "You have a lowe body weight, You can eat a bit more.";
    }
  }
}
