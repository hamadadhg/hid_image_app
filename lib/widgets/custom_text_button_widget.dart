import 'package:flutter/material.dart';
import 'package:hid_image_app/widgets/custom_text_widget.dart';

class CustomTextButtonWidget extends StatelessWidget {
  const CustomTextButtonWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: CustomTextWidget(
        text: text,
        fontSize: 25,
        fontFamily: '',
        color: const Color(
          0xff6750A4,
        ),
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
      ),
    );
  }
}
