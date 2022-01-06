
import 'package:app_cafezinho_nuts/tela_campos.dart';
import 'package:app_cafezinho_nuts/tela_inicial.dart';
import 'package:app_cafezinho_nuts/tela_resultado.dart';
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

      routes: {
        '/primeira': (context) => TelaSlash(),
        '/segunda': (context) => TelaInicial(),
        //'/terceira': (context) => TelaCampos(),
        //'/quarta':(context) => TelaResultados(),
      },

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
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

/*
Widget _introScreen() {
  return Stack(
    children: <Widget>[
      SplashScreen(
        seconds: 5,
        gradientBackground: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xffFFFFFF),
            Color(0xffFFFFFF)
          ],
        ),
        navigateAfterSeconds: TelaSlash(),
        loaderColor: Colors.transparent,
      ),
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imagens/logo.png"),
            fit: BoxFit.none,
          ),
        ),
      ),
    ],
  );
}
*/
