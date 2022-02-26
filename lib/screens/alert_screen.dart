import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);
  void displayDialogIos(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text("Titulo de alerta IOS"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text("Este es el contenido de la alerta"),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 100,
              ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text("Cancel"),
              onPressed: () => Navigator.pop(context),
            ),
            TextButton(
              child: const Text("OK"),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text("Titulo de Alerta"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text("Este es el contenido de la alerta"),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 100,
              ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text("Cancel"),
              onPressed: () => Navigator.pop(context),
            ),
            TextButton(
              child: const Text("OK"),
              onPressed: () => Navigator.pop(context),
            ),
          ],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => Platform.isAndroid
                  ? displayDialogAndroid(context)
                  : displayDialogIos(context),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Text(
                  "Mostrar alerta Android",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => !Platform.isAndroid
                  ? displayDialogAndroid(context)
                  : displayDialogIos(context),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Text(
                  "Mostrar alerta IOS",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.close),
      ),
    );
  }
}
