import 'package:flutter/material.dart';
import '/Telas/signin_up.dart';
//import '../signin_up.dart';

// ignore: camel_case_types
class Tela_Sobre extends StatefulWidget {
  const Tela_Sobre({ Key? key }) : super(key: key);

  @override
  _Tela_SobreState createState() => _Tela_SobreState();
}

// ignore: camel_case_types
class _Tela_SobreState extends State<Tela_Sobre> {
  @override
  Widget build(BuildContext context) {
// dados da tela cadastro

  final Dados obj = ModalRoute.of(context)!.settings.arguments as Dados;

   
    return Container(
      child: Column(
            children: [
              
        Container(
          child: 
      Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [Text('Sobre o aplicativo',
            style: TextStyle(
            fontSize: 42,
            fontStyle: FontStyle.normal,
            color: Colors.amber.shade800,
       
         ),
        ),
      ],
    ), 

     ),
     Container(
  
      margin: EdgeInsets.fromLTRB(40, 40, 40, 40),
      //padding: EdgeInsets.all(30),
      //decoração
      decoration: BoxDecoration(
        border:  Border.all(
          color:  Colors.orange.shade200,
          width: 5,
        ),
     
      ),
      width: MediaQuery.of(context).size.width *0.70,
      height: 700,
      child: Column(children: [
        // colocar imagem
        Image.asset('lib/img/lucas_gomes_da_silva.jpg'
        ),
       
       Container(
         width: 250,
         child: Column(
           
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           // 
            Text('Lucas gomes da silva',
              style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
          ),
        ),


         ],
       ),),
       Container(
      
       /*  decoration: BoxDecoration(
        border:  Border.all(
          color:  Colors.amber.shade600,
          width: 3,
        ),
         */
         child: Column(children: [
         
          Text('Prototipo base de catalogo de livros e consumo multimidia.',
              style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
               ),
              ),
            ],
          ), 
        ),
    Container(child: Column(children: [
         Text('Nome de usuario CADASTRADO'),
         Text(obj.nome),
        Text('email de usuario CADASTRADO'),
         Text( obj.email),
         Text('Nascimento de usuario CADASTRADO(não validado)'),
         Text(obj.nascimento),

       ],),



       ),

      ],
    ),
  ),
     
    ],
    ),     
    );
  }
}