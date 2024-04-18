// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator_app/components/botton_button.dart';
import 'package:bmi_calculator_app/components/custom_button_plus.dart';
import 'package:bmi_calculator_app/constants.dart';
import 'package:bmi_calculator_app/components/input_content.dart';
import 'package:bmi_calculator_app/components/reusable_widget.dart';
import 'package:bmi_calculator_app/logic/bmi_brain.dart';
import 'package:bmi_calculator_app/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  int age = 12;
  int height = 130;
  int weight = 60;
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
                    onPress: () {
                      setState(() {
                        gender = CardGender.male;
                      });
                    },
                    myColor: gender == CardGender.male
                        ? kActiveGender
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
                      setState(() {
                        gender = CardGender.female;
                      });
                    },
                    myColor: gender == CardGender.female
                        ? kActiveGender
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
          GestureDetector(
            onTap: () {
              BmiBrain calculation = BmiBrain(
                height: height,
                weight: weight,
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      infoText: calculation.getResult(),
                      resultCalculation:
                          calculation.bmiResult().toStringAsFixed(1),
                      indicationsText: calculation.getInterpretation(),
                    ),
                  ));
            },
            child: bottomButton(text: "CALCULATE"),
          ),
        ],
      ),
    );
  }
}
