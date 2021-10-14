import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var txtLogin = TextEditingController();
  var txtSenha = TextEditingController();

  get obj => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        //-> inicio da parte BOTÃO SOBRE
        // ------------------botao sobre --------------
        actions: [
          IconButton(
            icon: Icon(
              Icons.account_box,
              color: Colors.white,
            ),
            onPressed: () {
              // ATALHO PARA TELA DE SOBRE
              setState(() {

/*
                Navigator.pushNamed(
                  context,
                  't3',
                   arguments: obj
                   );
                   */
              });
            },
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        color: Colors.blue.shade800,
        child: Column(
          children: [
            Container( // container onde tem o incone do usuario
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle_sharp, // INCONE DE CONTA CIRCULAR
                      size: 200,
                      color: Colors.orange.shade300)
                ],
              ),
            ),
            Container(// container onde tem o Nome do aplicativo
              child: 
              Column(// LOGO E NOME DO APP
                children: [
                  // mainAxisAlignment: MainAxisAlignment.center,
                  Text(
                    'Biblioteca',
                    style: TextStyle(
                        fontSize: 42,
                        fontStyle: FontStyle.normal,
                        color: Colors.orange.shade400),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(// container onde tem o Nome do aplicativo
              child: Column(
                children: [
                  TextField(
                    cursorColor: Colors.amber.shade300,
                    controller: txtLogin,
                    decoration: InputDecoration(
                      labelText: 'Nome de usuario',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    cursorColor: Colors.amber.shade300,
                    controller: txtSenha,
                    keyboardType: TextInputType.visiblePassword,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      border: OutlineInputBorder(),
                      alignLabelWithHint: true,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Container(// container com botoes de acesso para a tela incial e cadastro
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                  
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 42,
                          fontStyle: FontStyle.normal,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      setState(() {
                        
                        Navigator.pushNamed(context, '/t3');
                      });
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    color: Colors.transparent,
                    width: 48.0,
                    height: 60.0,
                  ),
                  ElevatedButton(
                    child: Text(
                      'Cadastre',
                      style: TextStyle(
                          fontSize: 42,
                          fontStyle: FontStyle.normal,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.pushNamed(context, '/t2');
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
