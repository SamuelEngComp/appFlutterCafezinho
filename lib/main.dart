
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:app_cafezinho_nuts/tela_inicial.dart';
import 'package:app_cafezinho_nuts/tela_slash.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //initialRoute: '/',

      /*routes: {
        '/primeira': (context) => TelaSlash(),
        '/segunda': (context) => TelaInicial(),
        //'/terceira': (context) => TelaCampos(),
        //'/quarta':(context) => TelaResultados(),
      },*/


      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: AnimatedSplashScreen(
        splashIconSize: 300,
        splash: Image.asset('assets/imagens/icone_cafe.png',
        ),
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: MyHomePage(),
        //duration: 2500,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: TelaSlash(),
    );
  }
}
