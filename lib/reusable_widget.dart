import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
    required this.myColor,
    required this.cardChild,
    required this.onPress,
  });

  final Color myColor;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: myColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: cardChild,
        ),
      ),
    );
  }
}
