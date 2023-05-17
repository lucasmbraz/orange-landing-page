import 'package:design_system/design_system.dart';
import 'package:design_system/src/text_styles.dart';
import 'package:flutter/material.dart';

class DsTextFormField extends StatelessWidget {
  const DsTextFormField({
    super.key,
    this.initialValue,
    this.hint,
    this.textInputType,
    this.validator,
    this.onSaved,
  });

  final String? initialValue;
  final String? hint;
  final TextInputType? textInputType;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(20);
    return TextFormField(
      keyboardType: textInputType,
      initialValue: initialValue,
      // style: FireTextStyles.bodyNormal,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 25,
        ),
        filled: true,
        fillColor: DsColors.white,
        hintText: hint,
        hintStyle: DsTextStyles.heading3.copyWith(color: DsColors.gray),
        border: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide.none,
          // borderSide: BorderSide(color: context.fireColors.border),
        ),
      ),
      // The validator receives the text that the user has entered.
      validator: validator,
      onSaved: onSaved,
    );
  }
}
