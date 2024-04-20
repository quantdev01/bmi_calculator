//* bOTTOM BUTTON
import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

Container bottomButton({required String text}) => Container(
      color: kBottomBarColor,
      margin: const EdgeInsets.only(top: 10),
      width: double.infinity,
      height: kBottomBarHeight,
      child: Center(
        child: Text(
          text,
          style: kTextStyleBottom,
        ),
      ),
    );
