import 'package:flutter/material.dart';
import 'package:app_flutter/telas/painel_user.dart';
import 'package:app_flutter/telas/painel_organizacao.dart';
import 'package:app_flutter/telas/painel_projetos.dart';

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
        automaticallyImplyLeading: true,
        title: Row(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text(
                  "Administrador",
                  style: TextStyle(fontSize: 20),
                ),
              ),
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
              child: Container(
                width: 350,
                height: 100,
                child: Center(
                  child: Text(
                    "Visualizar Usuário",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => VisualizarOrganizacao()));
              },
              child: Container(
                width: 350,
                height: 100,
                child: Center(
                  child: Text(
                    "Visualizar Organização",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => VisualizarProjetos()));
              },
              child: Container(
                width: 350,
                height: 100,
                child: Center(
                  child: Text(
                    "Visualizar Projetos",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}