import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    Key? key,
    this.color,
    this.icon,
    this.onPressed,
    this.object,
  }) : super(key: key);
  final Color? color;
  final IconData? icon;
  final Function()? onPressed;
  final Object? object;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      backgroundColor: const Color(0xFF4C4F5E),
      onPressed: onPressed,
      heroTag: object,
    );
  }
}
