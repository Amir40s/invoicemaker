import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class MyImageProvider with ChangeNotifier {
  File? _image;
  File? get image => _image;

  Future<void> getImage() async {
    final ImagePicker picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      _image = File(pickedImage.path);
      notifyListeners();
    }
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
    _image = null;
    notifyListeners();
  }
}
