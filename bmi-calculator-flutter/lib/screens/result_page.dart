import 'package:bmi_calculator/components/ReusableCard.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ReaultPage extends StatelessWidget {
  ReaultPage(
      {@required this.bmiResults,
      @required this.resultTest,
      @required this.interpretation});
  final String bmiResults;
  final String resultTest;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: KTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultTest.toUpperCase(),
                      style: KResultTextStyle,
                    ),
                    Text(
                      bmiResults,
                      style: KBmiTextStyle,
                    ),
                    Text(
                      interpretation,
                      style: KBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              flex: 5,
            ),
            BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
