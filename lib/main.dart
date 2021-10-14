import 'package:flutter/material.dart';

// arquivos de telas
import 'Telas/home.dart';
import 'Telas/login.dart';
import 'Telas/paginas/paginas_grid/tela_sobre.dart';
import 'Telas/signin_up.dart';
//import 'Telas/paginas/Sobre.dart';




// arquivos de widgets

void main() {
  runApp( MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Biblioteca',


       // TEMAS
      theme: ThemeData(
        primaryColor: Colors.blue.shade700,
        backgroundColor: Colors.blue.shade100,
 
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 24,
            color: Colors.grey.shade900,
          ),
 
          //LabelStyle
          headline2: TextStyle(
            fontSize: 20,
            color: Colors.grey.shade900,
          ),
 
          //HintStyle
          headline3: TextStyle(
            fontSize: 20,
            color: Colors.grey.shade300,
          ),
 
        ),
 
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue.shade400,
            textStyle: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
 
      ),

        //
        //ROTAS DE NAVEGAÇÃO
        //
        initialRoute: '/t1',
        routes: {
          '/t1': (context) => Login(),
          '/t2': (context) => Cadastro(),
          '/t3': (context) => TelaPrincipal(),
          '/t4': (context) => Tela_sobre_stl(),
          
        },
home: TelaPrincipal(),

  ),
  );
}
