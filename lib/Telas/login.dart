import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var txtLogin = TextEditingController();
  var txtSenha = TextEditingController();
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          border: Border.all(
            color: Colors.orange.shade300,
            width: 10,
          ),
          color: Colors.blue.shade800,
        ),
        child: Column(
          children: [
            Container(
              //Incone do usuario
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle_sharp, // INCONE DE CONTA CIRCULAR
                      size: 200,
                      color: Colors.orange.shade300)
                ],
              ),
            ),
            Container(
              // Nome do aplicativo
              child: Column(
                // LOGO E NOME DO APP
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
            Container(
              // LOGIN E SENHA
              child: Column(
                children: [
                  TextField(
                    cursorColor: Colors.amber.shade300,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.amber.shade300, width: 3.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber, width: 1.0),
                      ),
                      hintText: 'Nome de usuario:',
                      hintStyle: TextStyle(color: Colors.amberAccent.shade700),
                    ),
                    controller: txtLogin,
                  ),
                  SizedBox(height: 10),
                  TextField(
                    cursorColor: Colors.amber.shade300,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.amber.shade300, width: 3.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber, width: 1.0),
                      ),
                      hintText: 'Senha:',
                      hintStyle: TextStyle(color: Colors.amberAccent.shade700),
                    ),
                    controller: txtSenha,
                    keyboardType: TextInputType.visiblePassword,
                    maxLines: 1,
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Container(
              // botoes de acesso para a tela incial e cadastro
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 42,
                          fontStyle: FontStyle.normal,
                          color: Colors.orange),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      setState(() {
                          caixaDialogo("cadastre-se para logar");
                    
                        //Navigator.pushNamed(context, '/t3',arguments: obj);
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
                      'Cadastre-se',
                      style: TextStyle(
                          fontSize: 42,
                          fontStyle: FontStyle.normal,
                          color: Colors.orange),
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


 caixaDialogo(msg){
    return showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Login'),
          content: Text(msg),
          actions: [
            TextButton(
              child: Text('fechar'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
    );
  }


}
