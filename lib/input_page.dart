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
  int weight = 60;
  int age = 12;

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
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xff8d8e98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xffeb1555),
                        overlayColor: Color(0x29eb1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30)),
                    child: Slider(
                      value: height.toDouble(),
                      onChanged: (double changedHeight) {
                        setState(() {
                          height = changedHeight.toInt();
                        });
                      },
                      min: kMinHeight,
                      max: kMaxHeight,
                    ),
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
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: kTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumbersTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            roundedButton(
                                icon: FontAwesomeIcons.minus,
                                setWeight: () {
                                  setState(() {
                                    weight--;
                                  });
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            roundedButton(
                                icon: FontAwesomeIcons.plus,
                                setWeight: () {
                                  setState(() {
                                    weight++;
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    myColor: kActiveColor,
                    onPress: () {},
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: kTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumbersTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            roundedButton(
                                icon: FontAwesomeIcons.minus,
                                setWeight: () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            roundedButton(
                                icon: FontAwesomeIcons.plus,
                                setWeight: () {
                                  setState(() {
                                    age++;
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomBarColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 50,
          ),
        ],
      ),
    );
  }
}

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
