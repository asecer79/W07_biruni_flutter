// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  File? file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Camera App")),
      body: file == null
          ? Container(
              alignment: Alignment.center,
              child: Column(children: [
                ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        
                      });
                      await getFromCamera();
                    },
                    child: Text(
                      "Take Picture",
                      style: TextStyle(fontSize: 24),
                    ))
              ]),
            )
          : Container(
              child: Image.file(file!),
            ),
    );
  }

  getFromCamera() async {
    var xfile = await ImagePicker.platform.getImage(source: ImageSource.camera);
    
    setState(() {
       file = File(xfile!.path);
    });
   
  }
}
