import 'package:flutter/material.dart';
import '../constants.dart';



class GenderColumn extends StatelessWidget {
  GenderColumn({this.genderIcon,this.genderName});

  final IconData genderIcon;
  final String genderName;



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size:80,
        ),
        SizedBox(
            height: 15.0
        ),
        Text(
          genderName,
          style: labelTextStyle,
        )
      ],
    );
  }
}