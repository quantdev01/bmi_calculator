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
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    height: 170,
                    decoration: BoxDecoration(
                      color: const Color(0xff1d1e33),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 175,
                    decoration: BoxDecoration(
                      color: const Color(0xff1d1e33),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 175,
                decoration: BoxDecoration(
                  color: const Color(0xff1d1e33),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    height: 175,
                    decoration: BoxDecoration(
                      color: const Color(0xff1d1e33),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 175,
                    decoration: BoxDecoration(
                      color: const Color(0xff1d1e33),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
