import '/components/reuseable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import 'input_page.dart';
import '../constants.dart';
import '../components/bottom_button.dart';


class ResultsPage extends StatelessWidget {

  ResultsPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.interpretation
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: ResultTitleTextStyle,
                ),
              ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kContainerColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText,
                  style: ResultTextTextStyle,
                ),
                  Text(
                    bmiResult,
                    style: BMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: NormalResultPageTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            ),
          BottomButton(onTap: () {
            Navigator.pop(context);
          },
              buttonTitle: "Re-Calculate"
          ),
        ],
      ),
    );
  }
}
