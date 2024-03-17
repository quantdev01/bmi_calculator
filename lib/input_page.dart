// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input_content.dart';
import 'reusable_widget.dart';

enum CardGender {
  male,
  female,
  none,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  CardGender gender = CardGender.none;
  int height = 130;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Text(
            'BMI CALCULATOR',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () => gender = CardGender.male,
                    myColor: gender == CardGender.male
                        ? kActiveColor
                        : kInactiveColor,
                    cardChild: InputContent(
                      icon: FontAwesomeIcons.mars,
                      maleFemaleText: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      gender = CardGender.female;
                    },
                    myColor: gender == CardGender.female
                        ? kActiveColor
                        : kInactiveColor,
                    cardChild: InputContent(
                      icon: FontAwesomeIcons.venus,
                      maleFemaleText: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Readme
          Expanded(
            child: ReusableCard(
              myColor: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: kTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumbersTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    onChanged: (double changedHeight) {
                      setState(() {
                        height = changedHeight.toInt();
                      });
                    },
                    activeColor: Color(0xffeb1555),
                    inactiveColor: Color(0xff8d8e98),
                    min: kMinHeight,
                    max: kMaxHeight,
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPress: () {},
                    myColor: kActiveColor,
                    cardChild: Text("Child"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    myColor: kActiveColor,
                    cardChild: Text("Home"),
                    onPress: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomBarColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomBarHeight,
          ),
        ],
      ),
    );
  }
}
