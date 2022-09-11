import 'dart:async';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => const InputPage()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/bmi.jpg',
            scale: 2.0,
          ),
          // const Text(
          //   'BMI Calculator',
          //   style: TextStyle(
          //     color: kColorCode,
          //     fontSize: 30.0,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
        ],
      )),
    );
  }
}
