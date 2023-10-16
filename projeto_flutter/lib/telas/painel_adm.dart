import 'package:flutter/material.dart';

void main() {
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PanelAdm(),
    );
  }
}

class PanelAdm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                // Adicione a ação desejada para a seta voltar aqui
              },
            ),
            Text(
              "Administrador",
              style: TextStyle(fontSize: 20),
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(Icons.person, color: Colors.blue),
                        SizedBox(width: 8),
                        Text("Perfil", style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                    value: "perfil",
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(Icons.exit_to_app, color: Colors.red),
                        SizedBox(width: 8),
                        Text("Sair", style: TextStyle(color: Colors.red)),
                      ],
                    ),
                    value: "sair",
                  ),
                ];
              },
              onSelected: (value) {
                if (value == "editar") {
                  // função de editar
                } else if (value == "sair") {
                  // função de sair
                }
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => VisualizarUsuario()));
              },
              child: Text("Visualizar Usuário"),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => VisualizarOrganizacao()));
              },
              child: Text("Visualizar Organização"),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => VisualizarProjetos()));
              },
              child: Text("Visualizar Projetos"),
            ),
          ],
        ),
      ),
    );
  }
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
