// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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
                child: NewWidget(myColor: Color(0xff1d1e33)),
              ),
              Expanded(
                child: NewWidget(
                  myColor: Color(0xff1d1e33),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: NewWidget(
            myColor: Color(0xff1d1e33),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: NewWidget(
                  myColor: Color(0xff1d1e33),
                ),
              ),
              Expanded(
                flex: 1,
                child: NewWidget(
                  myColor: Color(0xff1d1e33),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

class NewWidget extends StatelessWidget {
  final Color myColor;

  const NewWidget({super.key, required this.myColor});

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
