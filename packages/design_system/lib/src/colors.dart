import 'package:flutter/material.dart';

class DsColors {
  DsColors._();

  static const orangeFull = DsColor._(0xFFF8765E);
  static const white = DsColor._(0xFFFFFFFF);
}

class DsColor extends Color {
  const DsColor._(super.value);
}
