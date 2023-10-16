import 'package:flutter/material.dart';

void main() {
  runApp(MinhaApp());
}

class Projeto {
  final String nome;
  final String descricao;

  Projeto(this.nome, this.descricao);
}

class MinhaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrganizacaoPage(),
    );
  }
}

class OrganizacaoPage extends StatelessWidget {
  final List<Projeto> projetos = [
    Projeto("Projeto 1", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
    Projeto("Projeto 2", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
    Projeto("Projeto 3", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text(
                  "Organização Nome",
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
                if (value == "perfil") {
                  // Ação para abrir o perfil
                } else if (value == "sair") {
                  // Ação para sair
                }
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            
            SizedBox(height: 20),
            Text(
              "Nome da Organização",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.search),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Pesquisar...",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: projetos.map((projeto) {
                return Container(
                  width: 900,
                  child: Card(
                    elevation: 4,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            projeto.nome,
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(projeto.descricao),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetalhesProjetoPage(projeto),
                                    ),
                                  );
                                },
                                child: Text("Ver mais"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class DetalhesProjetoPage extends StatelessWidget {
  final Projeto projeto;

  DetalhesProjetoPage(this.projeto);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes do Projeto"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Nome do Projeto: ${projeto.nome}",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16),
            Text(
              "Descrição: ${projeto.descricao}",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}