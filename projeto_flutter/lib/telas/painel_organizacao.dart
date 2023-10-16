import 'package:flutter/material.dart';

void main() {
  runApp(VisualizarOrganizacao());
}

class VisualizarOrganizacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visualizar Organização"),
      ),
      body: Center(
        child: Text("Conteúdo da página Visualizar Organização"),
      ),
    );
  }
}