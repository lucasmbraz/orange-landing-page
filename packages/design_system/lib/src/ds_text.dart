import 'package:design_system/src/colors.dart';
import 'package:design_system/src/text_styles.dart';
import 'package:flutter/material.dart';

class DsText extends StatelessWidget {
  const DsText._(this.text, this.color, this._textStyle);

  DsText.heading1(String text, {required DsColor color})
      : this._(text, color, DsTextStyles.heading1);
  DsText.heading2(String text, {required DsColor color})
      : this._(text, color, DsTextStyles.heading2);
  DsText.heading3(String text, {required DsColor color})
      : this._(text, color, DsTextStyles.heading3);
  DsText.heading4(String text, {required DsColor color})
      : this._(text, color, DsTextStyles.heading4);
  DsText.mobile1(String text, {required DsColor color})
      : this._(text, color, DsTextStyles.mobile1);
  DsText.mobile2(String text, {required DsColor color})
      : this._(text, color, DsTextStyles.mobile2);
  DsText.mobile3(String text, {required DsColor color})
      : this._(text, color, DsTextStyles.mobile3);
  DsText.bodyNormal(String text, {required DsColor color})
      : this._(text, color, DsTextStyles.bodyNormal);
  DsText.bodyEmphasis(String text, {required DsColor color})
      : this._(text, color, DsTextStyles.bodyEmphasis);
  DsText.logo(String text, {required DsColor color})
      : this._(text, color, DsTextStyles.logo);
  DsText.navItem(String text, {required DsColor color})
      : this._(text, color, DsTextStyles.navItem);

  final String text;
  final DsColor color;
  final TextStyle _textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _textStyle.copyWith(color: color),
    );
  }
}
