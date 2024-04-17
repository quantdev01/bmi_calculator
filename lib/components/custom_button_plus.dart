import 'package:bmi_calculator_app/constants.dart';
import 'package:flutter/material.dart';

RawMaterialButton roundedButton({
  required IconData icon,
  required Function setWeight,
}) {
  return RawMaterialButton(
    onPressed: () => setWeight(),
    constraints: BoxConstraints.expand(
      height: 56,
      width: 56,
    ),
    fillColor: kPlusMoinButtonColor,
    shape: CircleBorder(),
    elevation: 0,
    child: Icon(icon),
  );
}
