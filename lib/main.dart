import 'package:astrogeek/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AstroGeek',
        defaultTransition: Transition.cupertino,
        getPages: pages,
        navigatorObservers: [RouteObserver()],
        initialRoute: RouteNames.splash,
      ),
    );
  }
}
