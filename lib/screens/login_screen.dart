import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hid_image_app/cubits/auth_cubit/auth_cubit.dart';
import 'package:hid_image_app/widgets/custom_login_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static String loginSecreenId = 'LoginSecreen';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: const Scaffold(
        resizeToAvoidBottomInset: false,
        body: CustomLoginWidget(),
      ),
    );
  }
}
