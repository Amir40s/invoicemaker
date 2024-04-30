import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:permission_handler/permission_handler.dart';
import '../../constants/color_class.dart';

class MyImageProvider with ChangeNotifier {
  File? _image;
  String _imagepath = "assets/images/blank_image.webp";
  File? get image => _image;
  String get imagepath => _imagepath;

  String blankImage = "assets/images/blank_image.webp";

  Future<void> pickImage(BuildContext context) async {
    var status = await Permission.storage.status;
    try {
      if(status.isGranted){
        final picker = ImagePicker();
        final pickedImage = await picker.pickImage(source: ImageSource.gallery);
        if (pickedImage != null) {
          updatePath(pickedImage.path);
        }
      }else{
        onDenied(context);
      }
    } catch (e) {}
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
void onDenied(BuildContext context){
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      title: const Text('Permissions Request'),
      content: Text('This app needs storage permissions to Store Files. Please enable it in the app settings.'),
      actions: <Widget>[
        InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: SizedBox(width: 120,child: Center(child: Text('OPEN SETTINGS',style: TextStyle(color: appColor),))),
            onTap: () {
              openAppSettings();
              Navigator.of(ctx).pop();
            }
        ),
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: SizedBox(width: 60,child: Center(child: Text('CANCEL',style: TextStyle(color: appColor),))),
          onTap: () => Navigator.of(ctx).pop(),
        )
      ],
    ),
  );
}