

import 'package:app_cafezinho_nuts/tela_inicial.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TelaResultados extends StatelessWidget {

  final String nomeRecebido;
  final String numeroRecebido;

  final String tituloApp = 'Cafezinho';

  final String subTituloApp = 'NUTS';

  final String caminhoImagemLogo = 'assets/imagens/logo.png';
  final String caminhoImagemMaos = 'assets/imagens/maos.png';

  static const String jogarNovamente = 'Jogar Novamente';

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
            fontStyle: FontStyle.italic,
            fontSize: 20,
          ),),
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: LayoutBuilder(
            builder: (_, constraints){
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight/4,
                    child: Image.asset(caminhoImagemLogo,
                      alignment: Alignment.center,
                      width: constraints.maxWidth,
                      height: constraints.maxHeight/4,),
                  ),

                  Container(
                    width: constraints.maxWidth * .8,
                    height: constraints.maxHeight/4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Parab??ns ${nomeRecebido.toUpperCase()}, o n??mero $numeroRecebido foi o escolhido.',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,),),
                        const SizedBox(height: 10,),
                        const Text('Prepare um bom caf??',
                          style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.italic
                          ),),
                      ],
                    ),
                  ),

                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight/4,
                    child: Image.asset(caminhoImagemMaos,
                      alignment: Alignment.center,
                      width: constraints.maxWidth,
                      height: constraints.maxHeight/4,
                    ),
                  ),

                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight/4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 10,),
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
                          child: const Text(jogarNovamente,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic),),
                        ),
                      ],
                    ),

                  ),

                ],
              );
            },
          ),
        ),



      ),
    );
  }
}
