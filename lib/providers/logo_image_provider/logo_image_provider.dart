import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class MyImageProvider with ChangeNotifier {
  File? _image;
  String _imagepath = "assets/images/blank_image.webp";
  File? get image => _image;
  String get imagepath => _imagepath;

  String blankImage = "assets/images/blank_image.webp";

  Future<void> pickImage() async {
    try {
      final picker = ImagePicker();
      final pickedImage = await picker.pickImage(source: ImageSource.gallery);

      if (pickedImage != null) {
        updatePath(pickedImage.path);
      } else {
        print('No image selected.');
      }
    } catch (e) {
      print('Error picking image: $e');
    }
    notifyListeners();
  }
  void updatePath(String newPath) async {
    _imagepath = newPath;
    notifyListeners();
  }

  Future<void> getCamera() async {
    final ImagePicker picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      _image = File(pickedImage.path);
      notifyListeners();
    }
  }
  void clearImage() {
    _imagepath = blankImage;
    notifyListeners();
  }
}
