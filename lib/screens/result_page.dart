import 'package:bmi/components/botton_button.dart';
import 'package:bmi/components/reusable_widget.dart';
import 'package:bmi/constants.dart';
import 'package:bmi/screens/input_page.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.infoText,
    required this.resultCalculation,
    required this.indicationsText,
  });

  final String infoText;
  final String resultCalculation;
  final String indicationsText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 20),
            child: Text(
              "Your Result",
              textAlign: TextAlign.left,
              style: kYourResultStyle,
            ),
          ),
          Expanded(
            child: ReusableCard(
              onPress: () {},
              myColor: kInactiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    infoText.toUpperCase(),
                    style: kWeightText,
                  ),
                  Text(
                    resultCalculation,
                    style: kTextResult,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      indicationsText,
                      style: kLongTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const InputPage(),
                )),
            child: bottomButton(text: "RE-CALCULATE"),
          ),
        ],
      ),
    );
  }
}
