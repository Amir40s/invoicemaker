import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';

import '../../button_classes/share_button/share_button.dart';
import '../../constants/color_class.dart';

class SignatureProvider with ChangeNotifier {
  Uint8List? _signatureBytes;
  Uint8List? get signatureBytes => _signatureBytes;
  final SignatureController controller = SignatureController(
    penColor: appColor,
    exportPenColor: appColor,
    penStrokeWidth: 2,
    exportBackgroundColor: textColor,
  );

  void openSignaturePad() async {
    await Get.bottomSheet(
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Signature(
                controller: controller,
                width: double.infinity,
                height: 250.0,
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ShareButton().shareButton(onPress: clearSignature, fontWeight: FontWeight.w600, text: "Remove", buttonColor: bgColor, textColor: appColor, fontSize: 12, width: 100.0, height: 40.0, borderRadius: BorderRadius.circular(10.0)),
            )
          ],
        ),
      ),
    );

    final signature = await controller.toPngBytes();
    if (signature != null) {
      _signatureBytes = signature;
      notifyListeners();
    }
  }

  void clearSignature() {
    controller.clear();
    _signatureBytes = null;
    notifyListeners();
  }
}
