import 'package:flutter/material.dart';

const textStyle = TextStyle(
  color: Color(0xff8d8e98),
  fontSize: 18,
);

class InputContent extends StatelessWidget {
  const InputContent({
    required this.icon,
    required this.maleFemaleText,
    super.key,
  });

  final IconData icon;
  final String maleFemaleText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Colors.white,
        ),
        const SizedBox(height: 15),
        Text(
          maleFemaleText,
          style: textStyle,
        )
      ],
    );
  }
}
