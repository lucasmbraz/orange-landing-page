import 'package:flutter/material.dart';

class DsColors {
  DsColors._();

  static const orangeFull = DsColor._(0xFFF8765E);
  static const lightBlue = DsColor._(0xFF9BDBE7);
  static const gray = DsColor._(0xFFCDCDCD);
  static const white = DsColor._(0xFFFFFFFF);
}

class DsColor extends Color {
  const DsColor._(super.value);
}
