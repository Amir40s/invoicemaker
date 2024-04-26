import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:invoicemaker/providers/add_client_provider/add_client_provider.dart';
import 'package:invoicemaker/providers/add_item_provider/add_item_provider.dart';
import 'package:invoicemaker/providers/get_value_provider/get_value_provider.dart';
import 'package:invoicemaker/providers/logo_image_provider/logo_image_provider.dart';
import 'package:invoicemaker/providers/signature_provider/signature_provider.dart';
import 'package:invoicemaker/start_screen/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';
import 'constants/color_class.dart';
import 'firebase_options.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: appColor));

  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => GetValueProvider()),
      ChangeNotifierProvider(create: (_) => SignatureProvider()),
      ChangeNotifierProvider(create: (_) => ClientsListProvider()),
      ChangeNotifierProvider(create: (_) => AddItemProvider()),
      ChangeNotifierProvider(create: (_) => MyImageProvider()),
    ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Invoice Maker',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: appColor,primary: appColor),
          useMaterial3: true,
        ),
        home: SplashScreen(),
      ),);
  }
}
