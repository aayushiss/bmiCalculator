import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomBar extends StatelessWidget{
  BottomBar({required this.onTap, required this.buttonTitle});

  final GestureTapCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // padding: ,
        child: Center(
          child: Text(
            buttonTitle,
            style: largeButtonTextStyle,
          ),
        ),
        color: bottomContainerColour,
        height: bottomContainerHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 15),
      ),
    );
  }
}