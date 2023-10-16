import 'package:flutter/material.dart';

void main() {
  runApp(VisualizarUsuario());
}

class VisualizarUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visualizar Usuário"),
      ),
      body: Center(
        child: Text("Conteúdo da página Visualizar Usuário"),
      ),
    );
  }
}