import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hid_image_app/cubits/auth_cubit/auth_cubit.dart';
import 'package:hid_image_app/widgets/custom_register_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  static String registerSecreenId = 'RegisterSecreen';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: const Scaffold(
        resizeToAvoidBottomInset: false,
        body: CustomRegisterWidget(),
      ),
    );
  }
}
