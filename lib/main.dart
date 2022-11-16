import 'package:flutter/material.dart';
import 'package:flutter_application_1/statefull.dart';
import 'package:flutter_application_1/stateless.dart';

import 'cameraexample.dart';
import 'loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "W07-Lab-App",
      theme: ThemeData(primarySwatch: Colors.green),
      home: CameraPage(),
    );
  }
}
