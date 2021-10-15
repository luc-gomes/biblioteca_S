import 'package:flutter/material.dart';

class Dados {
  final String nome;
  final String email;
  final String nickname;
  
  Dados(this.nome, this.email, this.nickname);
}
enum SingingCharacter { Masculino, Feminino }

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
 // SingingCharacter? _character = SingingCharacter.Masculino;
  // como pegar o dado da linha acima e colocar dentro do obj dados?
  var nome = TextEditingController();
  var email = TextEditingController();
  var nickname = TextEditingController();
  var senha = TextEditingController();
  var confirmasenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Cadastro'),
         ), // appBar: 
      body: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
        border:  Border.all(
        color:  Colors.orange.shade300,
       // width: 15,
        ),
      color: Colors.blue,
      ),
      width: MediaQuery.of(context).size.width *0.99,
        child: Column(
          children: [
            Container(//Container de titulo
              child: Text(
                    'Cadastro',
                    style: TextStyle(
                        fontSize: 42,
                        fontStyle: FontStyle.normal,
                        color: Colors.orange.shade600),
                    textAlign: TextAlign.center,
            ),               
          ),
            Container(
             child:
              Column(
                children: [

                TextField(//NOME
                   cursorColor: Colors.amber.shade300,
                  decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber, width: 3.0),
                ),
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber, width: 
                  1.0),
                ),
                  hintText: 'Nome completo:',
                  hintStyle: TextStyle( color: Colors.amberAccent.shade700),
              ),

                  controller: nome,
                  
                ),
                SizedBox(height: 10),
        
                TextField(// EMAIL DO USUARIO
                 cursorColor: Colors.amber.shade300,
                  decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber, width: 3.0),
                ),
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber, width: 
                  1.0),
                ),
                  hintText: 'E-mail:',
                  hintStyle: TextStyle( color: Colors.amberAccent.shade700),
              ),  
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  maxLines: 1,
                
            ),
                SizedBox(height: 10),
           
                TextField( // NICKNAME
                  cursorColor: Colors.amber.shade300,
                  decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber, width: 3.0),
                ),
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber, width: 
                  1.0),
                ),
                  hintText: 'Nome de usuario:',
                  hintStyle: TextStyle( color: Colors.amberAccent.shade700),
              ),
                  controller: nickname,
                  keyboardType: TextInputType.name,
                  maxLines: 1,
              ),
            
                SizedBox(height: 10),
                  
                TextField(// senha
                   cursorColor: Colors.amber.shade300,
                  decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber, width: 3.0),
                ),
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber, width: 
                  1.0),
                ),
                  hintText: 'senha:',
                  hintStyle: TextStyle( color: Colors.amberAccent.shade700),
              ),  
                  controller: senha,
                  keyboardType: TextInputType.visiblePassword,
                  maxLines: 1,
                ),
            
                SizedBox(height: 10),
                 
                TextField(// confirma senha
                  cursorColor: Colors.amber.shade300,
                  decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber, width: 3.0),
                ),
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber, width: 
                  1.0),
                ),
                  hintText: 'Confirme sua senha:',
                  hintStyle: TextStyle( color: Colors.amberAccent.shade700),
              ),
                  
                  controller: confirmasenha,
                  keyboardType: TextInputType.visiblePassword,
                  maxLines: 1,
                  ),
                
                  SizedBox(height: 10),





/*
                Row(
                  children: <Widget>[
                    RadioListTile<SingingCharacter>(
                      title: const Text('Masculino'),
                      value: SingingCharacter.Masculino,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                      setState(() {
                      _character = value;
                    });
                  },
                ),
                  RadioListTile<SingingCharacter>(
                    title: const Text('Feminino'),
                    value: SingingCharacter.Feminino,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ],
              ),
    */ ],
    ),
  ),
     
            ElevatedButton(
              child: Text('Cadastrar'),
              onPressed: () {
                setState(() {
                  var obj = Dados(
                    nome.text,
                    email.text,
                    nickname.text,  
                  );

                Navigator.pushNamed(context, '/t3' ,arguments: obj);
                 
                });
              },
            ),
          ], // childrem
        ),
      ),
    
    );
  }
}
