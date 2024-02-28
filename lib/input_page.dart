// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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
                  child: NewWidget(constCardColor, Text("Text")),
                ),
                Expanded(
                  child: NewWidget(constCardColor, Text("My widget")),
                ),
              ],
            ),
          ),
          //Readme
          Expanded(
            child: NewWidget(constCardColor, Text("Text 3")),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: NewWidget(constCardColor, Text("Child")),
                ),
                Expanded(
                  flex: 1,
                  child: NewWidget(constCardColor, Text("Home")),
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

class NewWidget extends StatelessWidget {
  const NewWidget(
    this.myColor,
    this.cardChild,
  );

  final Color myColor;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: myColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
