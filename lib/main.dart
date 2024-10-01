import 'package:flutter/material.dart';
import 'package:flutter_3d/main_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Model Viewer test"),
        ),
        body: const MainView(),
      ),
    );
  }
}
