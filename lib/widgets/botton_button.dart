import 'dart:io';

import 'package:bmi_calculator/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    this.text,
    this.onTap,
  }) : super(key: key);
  final String? text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: bottomContainerColor,
        margin: const EdgeInsets.only(
          top: 10.0,
        ),
        padding:
            Platform.isAndroid ? null : const EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: bottomContainerHeight,
        child: Center(
          child: Text(
            text.toString(),
            style: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
