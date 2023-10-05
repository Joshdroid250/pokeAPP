
import 'package:flutter/material.dart';
import 'package:poke_app/start.dart';

void main() => runApp(const PracticeApp());

class PracticeApp extends StatelessWidget {
  const PracticeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Rest Api Example",
      home: Start(),
    );
  }
}