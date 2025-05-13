import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'main.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String display = '0';
  String history = '';
  String result = '';
  bool openParenthesis = false;

  void atualizarDisplay(String value) {
    setState(() {
      if (display == '0' && value != '0') {
        display = value;
      } else {
        display += value;
      }
    });
  }

  void aplicarPorcentagem() {
    setState(() {
      if (display.isNotEmpty) {
        double number = double.parse(display);
        number = number / 100;
        display = number.toString();
      }
    });
  }

  void alternarSinal() {
    setState(() {
      if (display.startsWith('-')) {
        display = display.substring(1);
      } else {
        display = '- $display';
      }
    });
  }

  void insertParenthesis() {
    setState(() {
      if (display == '0' || display == '') {
        display += '(';
        openParenthesis = false;
      } else {
        display += ')';
        openParenthesis = true;
      }
    });
  }
}
