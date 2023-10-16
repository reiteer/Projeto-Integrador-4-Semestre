import 'package:flutter/material.dart';

void main() {
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaginaPerfil(),
    );
  }
}

class PaginaPerfil extends StatelessWidget {
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
              "Seu Perfil",
              style: TextStyle(fontSize: 20),
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    child: Row(
                      children: [
                        IconTheme(
                          data: IconThemeData(color: Colors.black),
                          child: Icon(Icons.edit),
                        ),
                        SizedBox(width: 8),
                        Text("Editar"),
                      ],
                    ),
                    value: "editar",
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
            CircleAvatar(
              radius: 50, // Raio do avatar
              backgroundImage: AssetImage('caminho_da_sua_imagem.png'), // caminho do banco de dados
            ),
            SizedBox(height: 16), // Espaço entre a foto de perfil e o nome
            Text(
              'Seu Nome',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'seu.email@example.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: 600,
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Nome'),
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: 600,
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: 600,
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Celular'),
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: 600,
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Endereço'),
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: 600,
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Nível de Acesso'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}