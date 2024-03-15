// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input_content.dart';
import 'reusable_widget.dart';

const bottomBarHeight = 80.0;
const constCardColor = Color(0xff1d1e33);
const bottomBarColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    myColor: constCardColor,
                    cardChild: InputContent(
                      icon: FontAwesomeIcons.mars,
                      maleFemaleText: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    myColor: constCardColor,
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
              myColor: constCardColor,
              cardChild: Text("Text 3"),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    myColor: constCardColor,
                    cardChild: Text("Child"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    myColor: constCardColor,
                    cardChild: Text("Home"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomBarColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomBarHeight,
          ),
        ],
      ),
    );
  }
}
