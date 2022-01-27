import 'dart:async';

import 'package:app_cafezinho_nuts/tela_resultado.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Animacao extends StatefulWidget {

  late final String nomeRecebido;
  late final String numeroRecebido;

  Animacao({required this.nomeRecebido, required this.numeroRecebido});


  @override
  _AnimacaoState createState() => _AnimacaoState();
}

class _AnimacaoState extends State<Animacao> with SingleTickerProviderStateMixin{

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  void dispose() {
    super.dispose();
  }

  route() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => TelaResultados(
                nomeRecebido: widget.nomeRecebido,
                numeroRecebido: widget.numeroRecebido)));
  }

  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 200,
              height: 200,
              alignment: Alignment.center,
              child:Lottie.asset('assets/imagens/26864-coffee-time-loading.json',
                width: 150,
                height: 150,
                repeat: true,
                //reverse: true,
                animate: true,
              ),
            ),
          ),
          const Center(
              child: Text('Aguarde ... Processando ...',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,),)),

        ],
      ),
    );
  }
}
