import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_bar.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.calculateBMI,
      required this.bmiResult,
      required this.interpretation});
  final String calculateBMI;
  final String bmiResult;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              // margin: EdgeInsets.only(top: 30),
              child: Text('Your Result', style: TitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: cardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(bmiResult, style: ResultTextStyle),
                  Text(calculateBMI, style: BMITextStyle),
                  Text(
                    interpretation,
                    style: interpretationTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomBar(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'Re-Calculate')
        ],
      ),
    );
  }
}
