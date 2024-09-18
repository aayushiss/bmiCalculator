import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  IconContent({this.text = '', this.icon = FontAwesomeIcons.font});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          // FontAwesomeIcons.mars,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          text,
          // 'MALE',
          style: labelTextStyle,)
      ],
    );
  }
}