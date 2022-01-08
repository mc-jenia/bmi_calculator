import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final String? text;
  final IconData? iconData;
  const IconContent({
    Key? key,
    this.text,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          '$text',
          style: const TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}
