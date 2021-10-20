import 'package:flutter/material.dart';
//import 'package:biblioteca_p1/Telas/signin_up.dart';

class GridMenuConfiguracoes extends StatefulWidget {
  const GridMenuConfiguracoes({Key? key}) : super(key: key);

  @override
  _GridMenuConfiguracoesState createState() => _GridMenuConfiguracoesState();
}

class _GridMenuConfiguracoesState extends State<GridMenuConfiguracoes> {
  get obj => null;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        //---------------------------------------------------------------------

        Container(
          // FAVORITOS
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                child: IconButton(
                  icon: Icon(Icons.favorite_outline),
                  iconSize: 90,
                  color: Colors.orange.shade300,
                  onPressed: () {
                    setState(() {
                      // colocar alguma ação aqui
                      Icon(Icons.favorite_border_sharp);
                    });
                  },
                ),
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

        Container(
          //criativo
          // FAVORITOS
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                child: IconButton(
                  icon: Icon(Icons.create_new_folder),
                  iconSize: 90,
                  color: Colors.orange.shade300,
                  onPressed: () {
                    setState(() {
                      // colocar alguma ação aqui
                      Icon(Icons.headphones);
                    });
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: Text(
                  'criativo',
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
        Container(
          // ajuda
          // FAVORITOS
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                child: IconButton(
                  icon: Icon(Icons.help_center_sharp),
                  iconSize: 90,
                  color: Colors.orange.shade300,
                  onPressed: () {
                    setState(() {
                      // colocar alguma ação aqui
                      Icon(Icons.help_center_sharp);
                    });
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: Text(
                  'ajuda',
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
        Container(
          //sobre

          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                child: IconButton(
                  icon: Icon(Icons.info_rounded),
                  iconSize: 90,
                  color: Colors.orange.shade300,
                  onPressed: () {
                    setState(() {
                       
                  /*    var obj = Dados(
                       var nome.text,
                        email.text,
                        nickname.text,
                      );
*/
                      Navigator.pushNamed(context, '/t4', arguments: obj);
                    });
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: Text(
                  'sobre',
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
        Container(
          //conta
          // FAVORITOS
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                child: IconButton(
                  //icon button sconta
                  icon: Icon(Icons.account_box_sharp),
                  iconSize: 90,
                  color: Colors.orange.shade300,
                  onPressed: () {
                    setState(() {
                      // colocar alguma ação aqui
                      Icon(Icons.account_box_sharp);
                    });
                  },
                ),
              ),
              Container(
                //rotulo conta
                padding: EdgeInsets.all(30),
                child: Text(
                  'conta',
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
        Container(
          //sair
          // FAVORITOS
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                //icon button sair
                child: IconButton(
                  icon: Icon(Icons.logout_sharp),
                  iconSize: 90,
                  color: Colors.orange.shade300,
                  onPressed: () {
                    setState(() {
                      // colocar alguma ação aqui
                      Icon(Icons.logout_sharp);
                    });
                  },
                ),
              ),
              Container(
                // rotulo sair
                padding: EdgeInsets.all(30),
                child: Text(
                  'sair',
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
