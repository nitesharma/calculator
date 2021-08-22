import 'package:math_expressions/math_expressions.dart';

class CalcLogic {
  String equation = '0';
  String result = '0';
  String expression = '0';
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;

  buttonPressed(String buttontext) {
    if (buttontext == 'AC') {
      equation = '0';
      result = '0';
      equationFontSize = 38.0;
      resultFontSize = 48.0;
    } else if (buttontext == "c") {
      equationFontSize = 48.0;
      resultFontSize = 38.0;
      equation = equation.substring(0, equation.length - 1);
      if (equation == '') {
        equation = '0';
      }
    } else if (buttontext == '=') {
      equationFontSize = 38.0;
      resultFontSize = 48.0;
      expression = equation;
      try {
        Parser p = new Parser();
        Expression exp = p.parse(expression);
        ContextModel cm = ContextModel();
        result = '${exp.evaluate(EvaluationType.REAL, cm)}';
      } catch (e) {}
    } else {
      equationFontSize = 48.0;
      resultFontSize = 38.0;
      if (equation == '0') {
        equation = buttontext;
      } else {
        equation = equation + buttontext;
      }
    }
  }
}
