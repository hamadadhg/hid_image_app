/*
import 'package:flutter/material.dart';
import 'package:hid_image_app/widgets/custom_text_widget.dart';

class CustomContainerWidget extends StatelessWidget {
  const CustomContainerWidget({
    super.key,
    required this.textInCenterContainer,
    required this.containerColor,
    required this.onTap,
    required this.colorInContainer,
    required this.fontFamilyInContainer,
    required this.fontSizeInContainer,
    required this.fontWeightInContainer,
    this.height = 80,
    this.width = 200,
    this.borderRadius = 64,
  });
  final String textInCenterContainer;
  final Color colorInContainer;
  final double fontSizeInContainer;
  final String fontFamilyInContainer;
  final FontWeight fontWeightInContainer;
  final Color containerColor;
  final void Function()? onTap;
  final double height;
  final double width;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(
            borderRadius,
          ),
        ),
        child: Center(
          child: CustomTextWidget(
            text: textInCenterContainer,
            color: colorInContainer,
            fontFamily: fontFamilyInContainer,
            fontSize: fontSizeInContainer,
            fontWeight: fontWeightInContainer,
          ),
        ),
      ),
    );
  }
}
*/
