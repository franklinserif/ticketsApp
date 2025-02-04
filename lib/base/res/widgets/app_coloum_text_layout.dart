import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/res/widgets/text_style_third.dart';

class AppColoumTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment crossAxis;

  const AppColoumTextLayout(
      {super.key,
      required this.topText,
      required this.bottomText,
      this.crossAxis = CrossAxisAlignment.center});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxis,
      children: [
        TextStyleThird(text: topText),
        SizedBox(height: 5),
        TextStyleFourth(text: bottomText)
      ],
    );
  }
}
