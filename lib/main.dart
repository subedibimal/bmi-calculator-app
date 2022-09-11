import 'package:bmi_calculator/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      // home: const SplashScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
      },
    );
  }
}
