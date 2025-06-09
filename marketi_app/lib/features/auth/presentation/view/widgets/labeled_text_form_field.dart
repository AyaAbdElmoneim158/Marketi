import 'package:flutter/material.dart';
import 'package:marketi_app/core/resources/styles_manager.dart';

class LabeledTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String label;
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  const LabeledTextFormField({
    super.key,
    this.controller,
    this.validator,
    required this.label,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: StylesManager.font12DarkBlueMedium,
        ),
        TextFormField(
          controller: controller,
          validator: validator, // (value) => TValidator.validateEmptyText(AppStrings.fullName, value),
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(prefixIcon),
            suffixIcon: Icon(suffixIcon),
          ),
        ),
      ],
    );
  }
}
