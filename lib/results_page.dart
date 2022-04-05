import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {Key? key,
      required this.interpretation,
      required this.bmiResult,
      required this.bmiCalculation})
      : super(key: key);

  final String bmiCalculation;
  final String bmiResult;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Result',
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: activeContainerColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiCalculation.toUpperCase(),
                    style: TextStyle(fontSize: 30.0),
                  ),
                  Text(
                    bmiResult.toUpperCase(),
                    style: TextStyle(fontSize: 30.0),
                  ),
                  Text(
                    interpretation.toUpperCase(),
                    style: TextStyle(fontSize: 30.0),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'RE-CALCULATE',
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
