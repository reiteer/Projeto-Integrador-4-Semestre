import 'package:flutter/material.dart';

void main() {
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PainelProjetos(),
    );
  }
}

class PainelProjetos extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      )
    );
  }
}