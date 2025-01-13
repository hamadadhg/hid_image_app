import 'package:flutter/material.dart';
import 'package:hid_image_app/constant.dart';
import 'package:hid_image_app/screens/login_screen.dart';
import 'package:hid_image_app/screens/register_screen.dart';
import 'package:hid_image_app/widgets/custom_container_widget.dart';
import 'package:hid_image_app/widgets/custom_text_widget.dart';

class CustomContainFirstSecreenWidget extends StatelessWidget {
  const CustomContainFirstSecreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/image/select_register_image.jpg',
        ),
        CustomTextWidget(
          text: 'Sign Up And Sign In Take',
          fontFamily: 'Dancing Script',
          fontSize: 25,
          fontWeight: FontWeight.normal,
          color: kWhiteColor,
        ),
        CustomTextWidget(
          text: 'You To Hide Image Page',
          fontFamily: 'Dancing Script',
          fontSize: 25,
          fontWeight: FontWeight.normal,
          color: kWhiteColor,
        ),
        const SizedBox(
          height: 15,
        ),
        CustomContainerWidget(
          textInCenterContainer: 'Sign Up',
          onTap: () {
            Navigator.of(context).pushNamed(
              RegisterScreen.registerSecreenId,
            );
          },
          colorInContainer: kWhiteColor,
          fontSizeInContainer: 35,
          fontFamilyInContainer: '',
          fontWeightInContainer: FontWeight.normal,
          containerColor: const Color(
            0xff491C41,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        CustomContainerWidget(
            textInCenterContainer: 'Sign In',
            colorInContainer: kWhiteColor,
            fontSizeInContainer: 35,
            fontFamilyInContainer: '',
            fontWeightInContainer: FontWeight.normal,
            containerColor: const Color(
              0xff376E78,
            ),
            onTap: () {
              Navigator.of(context).pushNamed(
                LoginScreen.loginSecreenId,
              );
            }),
      ],
    );
  }
}
