import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hid_image_app/constant.dart';
import 'package:hid_image_app/cubits/hid_image_cubit/hid_image_state.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';

class HidImageCubit extends Cubit<HidImageState> {
  HidImageCubit()
      : super(
          HidImageInitialState(),
        );
  List<File> recieveListOfFilePathImages = [];
  final box = Hive.box(
    kOpenBox,
  );

  void stayTheHidImagesWhenYouOpenTheAppAgainMethod() {
    //listToSaveImages values it in the first time for open the app will be [](empty list)
    //but when you exit from app and open again you will see the images you hide in the first time for open the app
    List<String> listToSaveImages = List<String>.from(
      box.get(
        kOpenBox,
        defaultValue: [],
      ),
    );
    recieveListOfFilePathImages =
        listToSaveImages.map((loadedFile) => File(loadedFile)).toList();
    if (recieveListOfFilePathImages.isEmpty) {
      emit(
        ThereIsNoHidImageState(
          noHidImageMessage: 'No Image\'s Hidden',
        ),
      );
    } else {
      emit(
        ThereIsHidImageState(),
      );
    }
  }

  Future<void> saveAndHidImagesMethod() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? pickedFileImages = await imagePicker.pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFileImages != null) {
      recieveListOfFilePathImages.add(
        File(
          pickedFileImages.path,
        ),
      );
      box.put(
        kOpenBox,
        recieveListOfFilePathImages.map((savedFile) => savedFile.path).toList(),
      );
    }
    emit(
      ThereIsHidImageState(),
    );
  }
}
