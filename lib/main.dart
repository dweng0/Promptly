import 'package:flutter/material.dart';
import 'package:flutter_app/models/BaseApplicationMeta.dart';
import 'package:flutter_app/containers/Layout.dart';
import 'package:flutter_app/pages/resume.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final app = BaseApplicationMeta.of("1.0.0");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: app.name,
      home: Scaffold(
        body: Center(
            child: Padding(
                child: Resume(),
                padding: EdgeInsets.all(16)
            ) ),
      ),
    );
  }
}
