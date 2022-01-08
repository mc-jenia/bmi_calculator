import 'package:bmi_calculator/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI CALCULATOR',
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        sliderTheme: SliderTheme.of(context).copyWith(
          thumbShape: const RoundSliderThumbShape(
            enabledThumbRadius: 15.0,
          ),
          thumbColor: bottomContainerColor,
          overlayShape: const RoundSliderOverlayShape(
            overlayRadius: 30.0,
          ),
          overlayColor: const Color(0x29EB1555),
          activeTrackColor: Colors.white,
          inactiveTrackColor: const Color(0xFF8D8E98),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}
