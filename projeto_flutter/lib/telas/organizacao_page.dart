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
    Projeto("Projeto 1", "Descrição do Projeto 1"),
    Projeto("Projeto 2", "Descrição do Projeto 2"),
    Projeto("Projeto 3", "Descrição do Projeto 3"),
    Projeto("Projeto 4", "Descrição do Projeto 4"),
    // Adicione mais projetos conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Organização Nome"),
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
            Column(
              children: List.generate(projetos.length, (index) {
                if (index.isOdd) {
                  return SizedBox(height: 20);
                }
                final projetoIndex = index ~/ 2;
                return Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 200, // Ajuste a largura aqui conforme desejado
                        child: Card(
                          elevation: 4,
                          margin: EdgeInsets.all(10),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  projetos[projetoIndex].nome,
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Text(projetos[projetoIndex].descricao),
                                SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => DetalhesProjetoPage(projetos[projetoIndex]),
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
                      ),
                    ),
                  ],
                );
              }),
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
