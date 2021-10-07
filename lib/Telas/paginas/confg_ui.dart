import 'package:biblioteca_p1/Telas/widgetblocos/Item_menu%20configuracao.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class List_configuracoes extends StatefulWidget {
  const List_configuracoes({Key? key}) : super(key: key);

  @override
  _List_configuracoesState createState() => _List_configuracoesState();
}

// ignore: camel_case_types
class _List_configuracoesState extends State<List_configuracoes> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(child: 
    Container(
        color: Colors.blueAccent[100],
        child: 
          Column(children: [
                Row(// LINHA DO TITULO "CONFIGURAÇOES"
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Icon(
                        Icons.settings_applications, // INCONE DE CONTA CIRCULAR
                      size: 80,
                      color: Colors.orange.shade300),
                ),
                Container(
                  
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Configuraçoes',
                    style: TextStyle(
                      fontSize: 45,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
    
       
    
     
   
       


            WidgetItemMenuConfiguracao('favoritos'),
            WidgetItemMenuConfiguracao('conta'),
            WidgetItemMenuConfiguracao('Aparencia'),
            WidgetItemMenuConfiguracao('Ajuda'),
            WidgetItemMenuConfiguracao('Sobre'),
          ],
        ),
       ), 
      
  );    
  }
}
