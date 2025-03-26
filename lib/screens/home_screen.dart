import 'package:flutter/material.dart';
import 'package:hid_image_app/widgets/custom_contain_first_secreen_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String homeSecreenId = 'HomeSecreen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(
        0xff1C4149,
      ),
      body: CustomContainFirstSecreenWidget(),
    );
  }
}
