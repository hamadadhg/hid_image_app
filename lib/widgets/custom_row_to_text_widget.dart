import 'package:flutter/material.dart';
import 'package:hid_image_app/constant.dart';
import 'package:hid_image_app/widgets/custom_text_widget.dart';

class CustomRowToTextWidget extends StatelessWidget {
  const CustomRowToTextWidget({
    super.key,
    required this.textInRow,
  });
  final String textInRow;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 2,
        ),
        CustomTextWidget(
          text: textInRow,
          color: kGreyColor,
          fontSize: 16,
          fontFamily: '',
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
