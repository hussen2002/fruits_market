import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants.dart';

class CustomIndicator extends StatelessWidget {
  CustomIndicator({this.current});
  double? current;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
          activeColor: kMainColor,
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.green),
              borderRadius: BorderRadius.circular(8))),
      axis: Axis.horizontal,
      dotsCount: 3,
      position: current!,
    );
  }
}
