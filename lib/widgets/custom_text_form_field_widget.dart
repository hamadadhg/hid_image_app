/*
import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  const CustomTextFormFieldWidget({
    super.key,
    required this.iconData,
    this.obscureText = false,
    required this.validator,
    required this.keyboardType,
    required this.onChanged,
  });
  final Widget? iconData;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      keyboardType: keyboardType,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: iconData,
        errorStyle: const TextStyle(
          fontSize: 17,
        ),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
*/
