import 'package:flutter/material.dart';

 class Pesquisar extends StatefulWidget {
  
   const Pesquisar({ Key? key }) : super(key: key);
 

   @override
   _PesquisarState createState() => _PesquisarState();
 }
 
 class _PesquisarState extends State<Pesquisar> {

    var txtpesquisar = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: [Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ Container(// container onde tem o Nome do aplicativo
                child:Column(children: [                            
                TextField(
                  cursorColor: Colors.amber.shade300,
                  controller: txtpesquisar,
                  decoration: InputDecoration(
                  labelText: 'pesquisar',
                 ),
                ),
             ],
         ),
                  
        ),
      ],
    ), 
  ),
     
    ],
    ),     
    );
  }
}