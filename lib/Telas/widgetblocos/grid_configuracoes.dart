import 'package:flutter/material.dart';

class GridMenuConfiguracoes extends StatefulWidget {
  const GridMenuConfiguracoes({Key? key}) : super(key: key);

  @override
  _GridMenuConfiguracoesState createState() => _GridMenuConfiguracoesState();
}

class _GridMenuConfiguracoesState extends State<GridMenuConfiguracoes> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            // FAVORITOS
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  child: Icon(
                      Icons
                          .favorite_border_outlined, // INCONE DE CONTA CIRCULAR
                      size: 80,
                      color: Colors.orange.shade300),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Text(
                    'favoritos',
                    style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            color: Colors.blueAccent[100],
          ),

          //---------------------------------------------------------------------

          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  child: Icon(
                      Icons.account_box_rounded, // INCONE DE CONTA CIRCULAR
                      size: 80,
                      color: Colors.orange.shade300),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Text(
                    'Conta',
                    style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            color: Colors.blueAccent[100],
          ),

          //---------------------------------------------------------------------
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  child: Icon(Icons.person, // INCONE DE CONTA CIRCULAR
                      size: 80,
                      color: Colors.orange.shade300),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Text(
                    'Aparencia',
                    style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            color: Colors.blueAccent[100],
          ),

          //---------------------------------------------------------------------
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  child: Icon(
                      Icons.help_outline_rounded, // INCONE DE CONTA CIRCULAR
                      size: 80,
                      color: Colors.orange.shade300),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Text(
                    'Ajuda',
                    style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            color: Colors.blueAccent[100],
          ),

          //---------------------------------------------------------------------
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  child: Icon(
                      Icons.info_outline_rounded, // INCONE DE CONTA CIRCULAR
                      size: 80,
                      color: Colors.orange.shade300),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Text(
                    'Sobre',
                    style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    ),
                  ),
                 
                 
                 /*
                 
                   onTap: () {
                      setState(() {
                        
                        Navigator.pushNamed(context, '/t3');
                      });

*/






                ),
              ],
            ),
            color: Colors.blueAccent[100],
          ),

          //---------------------------------------------------------------------
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  child: Icon(Icons.logout_outlined, // INCONE DE CONTA CIRCULAR
                      size: 80,
                      color: Colors.orange.shade300),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Text(
                    'Sair',
                    style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            color: Colors.blueAccent[100],
          ),
       
       //------------------------------------------------------------------
           Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  child: Icon(
                      Icons.info_outline_rounded, // INCONE DE CONTA CIRCULAR
                      size: 80,
                      color: Colors.orange.shade300),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Text(
                    '***********',
                    style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            color: Colors.blueAccent[100],
          ),

          //---------------------------------------------------------------------
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  child: Icon(Icons.logout_outlined, // INCONE DE CONTA CIRCULAR
                      size: 80,
                      color: Colors.orange.shade300),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Text(
                    '***********',
                    style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            color: Colors.blueAccent[100],
          ),
       
        ],
      );
    
  }
}
