import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  var userName = 'User_1945'.obs;
  var email = 'User1945@gmail.com'.obs;
  var phone = '+6281234684952'.obs;

  var profileImage = File('').obs; // Observable file for image

  final ImagePicker _picker = ImagePicker();

  void pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      profileImage.value = File(pickedFile.path);
    }
  }
}
