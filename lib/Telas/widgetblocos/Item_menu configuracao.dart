import 'package:flutter/material.dart';

class WidgetItemMenuConfiguracao extends StatelessWidget {
  final String nome;
  const WidgetItemMenuConfiguracao(this.nome, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
      padding: EdgeInsets.all(10),
      //decoração
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.orange.shade200,
          width: 7,
        ),
        color: Colors.blueAccent[100],
      ),
      width: MediaQuery.of(context).size.width * 0.99,
      height: 175,
      child: Column(
        children: [
          // colocar imagem

          Container(
            //width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // INCONE PARA CATA ELEMENTO 

                        Container(child: 
                        Icon(
                        Icons.settings_applications, // INCONE DE CONTA CIRCULAR
                      size: 80,
                      color: Colors.orange.shade300),
                      
                        
                    ),






                        Container(
                          padding: EdgeInsets.all(30),
                          child: Text(
                            this.nome,
                            style: TextStyle(
                              fontSize: 30,
                              fontStyle: FontStyle.normal,
                              color: Colors.black,
                            ),
                          ),
                        ),
                     
                     
                     
                      ],
                    ),
                  ],
                )
                //
              ],
            ),
          ),
        ],
      ),
    );
  }
}
