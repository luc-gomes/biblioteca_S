import 'package:biblioteca_p1/Telas/widgetblocos/widgethistoria.dart';
import 'package:flutter/material.dart';

class FeedBlocos01 extends StatefulWidget {
  const FeedBlocos01({ Key? key }) : super(key: key);

  @override
  _FeedBlocos01State createState() => _FeedBlocos01State();
}

class _FeedBlocos01State extends State<FeedBlocos01> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: 
        Column(
          children: [
            Container(
              
              child:
              Row(// titulo da pagina principal
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('Acervo:',
            style: TextStyle(
            fontSize: 42,
            fontStyle: FontStyle.normal,
            color: Colors.amber.shade800,
          ),        
        ),
      ],
      ),
          
    ),
     WidgetHistoria('lib/img/dicionario_aurelio.jpg','Dicionario Aurélio'),
     WidgetHistoria('lib/img/dona_flor.jpg','Dona flor e seus dois maridos'),
     WidgetHistoria('lib/img/Bras_cubas.jpg','Memorias postomas de Bras Cubas'),
     WidgetHistoria('lib/img/dom_casmurro.jpg','Dom Casmurro'),
     
    
  
    ],
  ),
            
  ),
  
  );  
  }
}