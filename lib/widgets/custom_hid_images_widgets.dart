import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hid_image_app/cubits/hid_image_cubit/hid_image_cubit.dart';
import 'package:hid_image_app/cubits/hid_image_cubit/hid_image_state.dart';
import 'package:hid_image_app/widgets/custom_display_image_widget.dart';
import 'package:hid_image_app/widgets/custom_text_widget.dart';

class CustomHidImagesWidgets extends StatelessWidget {
  const CustomHidImagesWidgets({
    super.key,
    required this.assignListOfFilePathImages,
  });
  final List<File> assignListOfFilePathImages;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HidImageCubit, HidImageState>(
      builder: (context, state) {
        if (state is ThereIsNoHidImageState) {
          return Center(
            child: CustomTextWidget(
              text: state.noHidImageMessage,
              fontSize: 32,
              fontFamily: '',
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          );
        } else {
          return Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: assignListOfFilePathImages.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          CustomDisplayImageWidget.displayImageId,
                          arguments: assignListOfFilePathImages[index].path,
                        );
                      },
                      child: Image.file(
                        assignListOfFilePathImages[index],
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
