/*
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hid_image_app/constant.dart';
import 'package:hid_image_app/cubits/hid_image_cubit/hid_image_cubit.dart';
import 'package:hid_image_app/screens/hid_image_screen.dart';
import 'package:hid_image_app/screens/home_screen.dart';
import 'package:hid_image_app/screens/login_screen.dart';
import 'package:hid_image_app/screens/register_screen.dart';
import 'package:hid_image_app/widgets/custom_display_image_widget.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Hive.initFlutter();
  await Hive.openBox(
    kOpenBox,
  );
  runApp(
    const HidImage(),
  );
}

class HidImage extends StatelessWidget {
  const HidImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HidImageCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          HomeScreen.homeSecreenId: (context) => const HomeScreen(),
          RegisterScreen.registerSecreenId: (context) => const RegisterScreen(),
          LoginScreen.loginSecreenId: (context) => const LoginScreen(),
          HidImageScreen.hidImageSecreenId: (context) => const HidImageScreen(),
          CustomDisplayImageWidget.displayImageId: (context) =>
              const CustomDisplayImageWidget(),
        },
        initialRoute: HomeScreen.homeSecreenId,
      ),
    );
  }
}
*/
