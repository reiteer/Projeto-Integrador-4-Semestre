import 'package:flutter/material.dart';

void main() {
  runApp(VisualizarProjetos());
}

class VisualizarProjetos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visualizar Projetos"),
      ),
      body: Center(
        child: Text("Conteúdo da página Visualizar Projetos"),
      ),
    );
  }
}