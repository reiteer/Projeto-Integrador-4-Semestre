import 'package:flutter/material.dart';

void main() {
  runApp(VisualizarOrganizacao());
}

class Organizacao {
  final String nome;

  Organizacao(this.nome);
}

class VisualizarOrganizacao extends StatelessWidget {
  final List<Organizacao> Organizacaos = [
    Organizacao('Setor A'),
    Organizacao('RH'),
    Organizacao('Seter B'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Visualizar Organizações"),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  // Ação a ser executada ao pressionar o botão de adicionar usuário
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                icon: Icon(Icons.add),
                label: Text("Adicionar Nova Organização"),
              ),
              SizedBox(height: 16),  // Adiciona um espaço entre os botões e a DataTable
              Center(
                child: Container(
                  width: 1000,
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text('Nome')),
                      DataColumn(label: Text('Editar')),
                      DataColumn(label: Text('Excluir')),
                    ],
                    rows: Organizacaos
                        .map(
                          (Organizacao) => DataRow(
                            cells: [
                              DataCell(Text(Organizacao.nome)),
                              DataCell(IconButton(
                                icon: Icon(Icons.edit, color: Colors.orange),
                                onPressed: () {
                                  // Ação a ser executada ao pressionar o ícone de edição
                                },
                              )),
                              DataCell(IconButton(
                                icon: Icon(Icons.delete, color: Colors.red),
                                onPressed: () {
                                  // Ação a ser executada ao pressionar o ícone de exclusão
                                },
                              )),
                            ],
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
