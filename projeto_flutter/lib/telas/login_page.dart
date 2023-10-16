import 'package:flutter/material.dart';

void main() {
  runApp(PaginaDeLogin());
}

class PaginaDeLogin extends StatefulWidget {
  @override
  _EstadoPaginaDeLogin createState() => _EstadoPaginaDeLogin();
}

class _EstadoPaginaDeLogin extends State<PaginaDeLogin> {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  bool _senhaVisivel = false;

  void processarLogin() {
    String login = loginController.text;
    String senha = senhaController.text;
    // Faça o processamento do login aqui
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 100.0, top: 30.0),
                child: Image.asset(
                  'assets/logo.png',
                  width: 100.0,
                  height: 100.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: SizedBox(
                  width: 300.0,
                  child: TextFormField(
                    key: Key('loginField'),
                    controller: loginController,
                    decoration: InputDecoration(
                      labelText: 'Login',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: SizedBox(
                  width: 300.0,
                  child: TextFormField(
                    key: Key('senhaField'),
                    controller: senhaController,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      suffixIcon: IconButton(
                        icon: Icon(
                          _senhaVisivel
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _senhaVisivel = !_senhaVisivel;
                          });
                        },
                      ),
                    ),
                    obscureText: !_senhaVisivel,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: processarLogin,
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text(
                  'Entrar',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20.0), // Espaçamento maior
              TextButton(
                onPressed: () {
                  // Coloque aqui o código a ser executado quando o texto for clicado
                },
                child: Text(
                  'Entrar como usuário anônimo para teste',
                  style: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
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
