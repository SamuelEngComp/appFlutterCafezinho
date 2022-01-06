
import 'dart:ffi';

import 'package:flutter/material.dart';

class TelaResultados extends StatelessWidget {

  final String nomeRecebido;
  final String numeroRecebido;

  final String tituloApp = 'Cafezinho';

  final String subTituloApp = 'NUTS';

  final String caminhoImagemLogo = 'assets/imagens/logo.png';
  final String caminhoImagemMaos = 'assets/imagens/maos.png';

  final String jogarNovamente = 'Jogar Novamente';

  const TelaResultados({Key? key,
    required String this.nomeRecebido,
    required String this.numeroRecebido}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Expanded(
              flex: 0,
                child: Column(
                  children: [
                    Text(tituloApp,
                      style: const TextStyle(fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),),
                    Text(subTituloApp,
                      style: const TextStyle(fontSize: 50,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),),
                  ],
                ),
            ),

            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(caminhoImagemLogo,
                    alignment: Alignment.center,
                    width: 200,
                    height: 200,),
                ],
            ),

            Expanded(
              flex: 0,
                child: Container(
                  width: 350,
                  height: 100,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Parabéns ${nomeRecebido.toUpperCase()}, o número $numeroRecebido foi o escolhido.',
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,),),
                        SizedBox(height: 10,),
                        const Text('Prepare um bom café',
                          style: TextStyle(
                              fontSize: 15,
                              fontStyle: FontStyle.normal
                          ),),
                      ],
                    ),


            ),
            ),


            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(caminhoImagemMaos,
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                ),
              ],
            ),

          SizedBox(height: 10,),

          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
              )),
            ),
            onPressed: (){
              Navigator.pushNamed(context, '/segunda');
            },
              child: Text(jogarNovamente,
                style: const TextStyle(
                  fontSize: 20,
                    fontStyle: FontStyle.normal),),
            ),


          ],
        ),



      ),
    );
  }
}
