/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hid_image_app/constant.dart';
import 'package:hid_image_app/cubits/hid_image_cubit/hid_image_cubit.dart';
import 'package:hid_image_app/widgets/custom_floating_action_button_widget.dart';
import 'package:hid_image_app/widgets/custom_hid_images_widgets.dart';
import 'package:hid_image_app/widgets/custom_text_widget.dart';

class HidImageScreen extends StatefulWidget {
  const HidImageScreen({super.key});
  static String hidImageSecreenId = 'HidImageSecreen';

  @override
  State<HidImageScreen> createState() => _HidImageScreenState();
}

class _HidImageScreenState extends State<HidImageScreen> {
  @override
  void initState() {
    BlocProvider.of<HidImageCubit>(context)
        .stayTheHidImagesWhenYouOpenTheAppAgainMethod();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: CustomTextWidget(
          text: 'Hid Images',
          fontSize: 30,
          fontFamily: '',
          color: kGreyColorToAppBar,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: CustomHidImagesWidgets(
        assignListOfFilePathImages:
            context.read<HidImageCubit>().recieveListOfFilePathImages,
      ),
      floatingActionButton: CustomFloatingActionButtonWidget(
        onPressed:
            BlocProvider.of<HidImageCubit>(context).saveAndHidImagesMethod,
      ),
    );
  }
}
*/
