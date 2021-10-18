import 'package:analytics/core/shared/colors.dart';
import 'package:analytics/core/shared/sizes.dart';
import 'package:flutter/material.dart';

class BoxText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const BoxText.headingOne(this.text) : style = heading1Style;
  const BoxText.headingTwo(this.text) : style = heading2Style;
  const BoxText.headingThree(this.text) : style = heading3Style;
  const BoxText.headline(this.text) : style = headlineStyle;
  const BoxText.subheadingWhite(this.text) : style = subheadingStyle_white;
  const BoxText.subheadingBlack(this.text) : style = subheadingStyle_black;
  const BoxText.caption(this.text) : style = captionStyle;

  BoxText.body(this.text, {Color color = kcMediumGreyColor})
      : style = bodyStyle.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
