import 'package:flutter/material.dart';

class Dados {
  final String nome;
  final String email;
  final String nascimento;
  Dados(this.nome, this.email, this.nascimento);
}

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}
//------------------------variaveis-----------------
//
//
//final _estaSelecionado = false;
//final _escolhasexo;
//final _confirmasenha = false;

class _CadastroState extends State<Cadastro> {
  var nome = TextEditingController();
  var email = TextEditingController();
  var nascimento = TextEditingController();
  var senha = TextEditingController();
  var confirmasenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Cadastro'),
         ), // appBar: 
      body: Column(
        children: [
          Container(//Container de titulo
            child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ Text(
                "cadastro",
                style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                backgroundColor: Colors.blueAccent.shade100,
            ),
          ),
        ],
      ),
    ),
          Container(// informaçoes basicas do usuario
           child:
            Column(
              children: [
              
          TextField(// NOMe
            controller: nome,
            decoration: InputDecoration(
              labelText: 'Nome',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(// EMAIL DO USUARIO
            controller: email,
            keyboardType: TextInputType.emailAddress,
            maxLines: 1,
            decoration: InputDecoration(
              labelText: 'E-Mail',
              border: OutlineInputBorder(),
              alignLabelWithHint: true,
            ),
          ),
          SizedBox(height: 10),
          TextField( // IDADE DO USUARIO
            //   controller: txtSenha,
            keyboardType: TextInputType.datetime,
            maxLines: 1,
            decoration: InputDecoration(
              labelText: 'Nascimento',
              border: OutlineInputBorder(),
              alignLabelWithHint: true,
            ),
          ),
          SizedBox(height: 8),
     ],
    ),
  ),
          Container(// senha
            child:    Column(
              children: [
                TextField(// senha
                  controller: senha,
                  keyboardType: TextInputType.visiblePassword,
                  maxLines: 1,
                  decoration: InputDecoration(
                  labelText: 'Senha:',
                  border: OutlineInputBorder(),
                  alignLabelWithHint: true,
            ),
          ),
                SizedBox(height: 10),
                TextField(// confirma senha
            controller: confirmasenha,
            keyboardType: TextInputType.visiblePassword,
            maxLines: 1,
            decoration: InputDecoration(
              labelText: 'Confirmar senha:',
              border: OutlineInputBorder(),
              alignLabelWithHint: true,
            ),
          ),
                SizedBox(height: 10),

              ],
            ),
          ),


       

          //-------------------------Radio list tittle--------------------------------------

          /*RadioListTile(
              title: Text("masculino"),
              value: 'm',
              groupValue: _escolhasexo,
              onChanged: (String escolha) {
                setState(() {
                  _escolhasexo = escolha;
                });
              }),

          RadioListTile(
              title: Text("Feminino"),
              value: 'f',
              groupValue: _escolhasexo,
              onChanged: (String escolha) {
                setState(() {
                  _escolhasexo = escolha;
                });
              }),

              */
          //---------------------------------checkbox------------------------------------
//
          /*CheckboxListTile(
              title: Text("receber novidades em seu email?"),
              value: _estaSelecionado,
              onChanged: (bool valor) {
                setState(() {
                  _estaSelecionado = valor;
                });
              }),
*/

   
   
          ElevatedButton(
            child: Text('Cadastrar'),
            onPressed: () {
              setState(() {
                
                var obj = Dados(
                  nome.text,
                  email.text,
                  nascimento.text,
                  
                );

                Navigator.pushNamed(
                  context,
                  '/t3',
                   arguments: obj
                   );
                   //  Navigator.pushNamed(context, '/t3');

                // Navigator.pushNamed(context, "/tela2");
              });
            },
          ),
        ], // childrem
      ),
    
    );
  }
}
