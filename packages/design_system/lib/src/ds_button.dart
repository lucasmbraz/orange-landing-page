import 'package:design_system/design_system.dart';
import 'package:design_system/src/text_styles.dart';
import 'package:flutter/material.dart';

class DsButton extends StatelessWidget {
  const DsButton({super.key, required this.child, required this.onPressed});

  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(20);
    final buttonDecoration = BoxDecoration(
      color: DsColors.lightBlue,
      borderRadius: borderRadius,
    );

    return Container(
      decoration: buttonDecoration,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          textStyle: DsTextStyles.button,
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: child,
        ),
      ),
    );
  }
}
