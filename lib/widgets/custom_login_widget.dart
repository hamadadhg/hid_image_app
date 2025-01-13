import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hid_image_app/constant.dart';
import 'package:hid_image_app/cubits/auth_cubit/auth_cubit.dart';
import 'package:hid_image_app/cubits/auth_cubit/auth_state.dart';
import 'package:hid_image_app/helper/snack_bar_helper.dart';
import 'package:hid_image_app/screens/hid_image_screen.dart';
import 'package:hid_image_app/widgets/custom_icon_widget.dart';
import 'package:hid_image_app/widgets/custom_row_to_container_widget.dart';
import 'package:hid_image_app/widgets/custom_row_to_text_widget.dart';
import 'package:hid_image_app/widgets/custom_row_to_two_text_widget.dart';
import 'package:hid_image_app/widgets/custom_text_form_field_widget.dart';
import 'package:hid_image_app/widgets/custom_text_widget.dart';

class CustomLoginWidget extends StatefulWidget {
  const CustomLoginWidget({super.key});

  @override
  State<CustomLoginWidget> createState() => _CustomLoginWidgetState();
}

class _CustomLoginWidgetState extends State<CustomLoginWidget> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? email;
  String? password;
  bool isView = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccessState) {
          Navigator.of(context).pushNamed(
            HidImageScreen.hidImageSecreenId,
          );
          showMessageToUser(
            context: context,
            text: state.successMessage,
          );
        } else if (state is AuthFailureState) {
          showMessageToUser(
            context: context,
            text: state.errorMessage,
          );
        }
      },
      builder: (context, state) {
        if (state is AuthLoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                CustomTextWidget(
                  text: 'Login',
                  color: kGreyColorToAppBar,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: '',
                ),
                const SizedBox(
                  height: 25,
                ),
                const CustomRowToTextWidget(
                  textInRow: 'Email',
                ),
                CustomTextFormFieldWidget(
                  onChanged: (value) {
                    email = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  iconData: const CustomIconWidget(
                    iconData: Icons.email,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This Field Is Required';
                    } else if (!value.contains('@gmail.com')) {
                      return 'You Must Use @gmail.com';
                    } else if (value.length < 13) {
                      return 'Email Should Be More 12 Charactar';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                const CustomRowToTextWidget(
                  textInRow: 'Password',
                ),
                CustomTextFormFieldWidget(
                  onChanged: (value) {
                    password = value;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This Field Is Required';
                    } else if (value.length < 8) {
                      return 'Password Should Be More 7 Charactar';
                    }
                    return null;
                  },
                  iconData: IconButton(
                    onPressed: () {
                      setState(
                        () {
                          isView = !isView;
                        },
                      );
                    },
                    icon: isView
                        ? const CustomIconWidget(
                            iconData: Icons.visibility_off,
                          )
                        : const CustomIconWidget(
                            iconData: Icons.visibility,
                          ),
                  ),
                  obscureText: isView,
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomRowToContainerWidget(
                  textInRow: 'Login',
                  onTapInRow: () {
                    if (formKey.currentState!.validate()) {
                      context.read<AuthCubit>().loginUserMethod(
                            email: email!,
                            password: password!,
                          );
                    } else {
                      setState(
                        () {
                          autovalidateMode = AutovalidateMode.always;
                        },
                      );
                    }
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                const CustomRowToTwoTextWidget(
                  textInRow: 'Sign Up',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
