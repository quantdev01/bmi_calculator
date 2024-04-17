import 'package:bmi_calculator_app/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0A0D22),
          background: const Color(0xFF0A0D22),
        ),
        appBarTheme: const AppBarTheme(
          color: Color(0xFF0A0D22),
          foregroundColor: Colors.white,
          shadowColor: Color(0xFF0A0D22),
          elevation: 5,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const InputPage(),
    );
  }
}
