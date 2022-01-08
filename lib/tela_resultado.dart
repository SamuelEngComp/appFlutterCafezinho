

import 'package:app_cafezinho_nuts/tela_inicial.dart';
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
      appBar: AppBar(
        centerTitle: true,
        title:  Text(tituloApp + " " + subTituloApp,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
      ),
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(caminhoImagemLogo,
                    alignment: Alignment.center,
                    width: 280,
                    height: 280,),
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

              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => TelaInicial()));
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
