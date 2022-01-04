
import 'package:app_cafezinho_nuts/tela_inicial.dart';
import 'package:app_cafezinho_nuts/textos.dart';
import 'package:flutter/material.dart';

class TelaSlash extends StatelessWidget {


  /*final String tituloApp = 'Cafezinho';
  final String subTituloApp = 'NUTS';
  final String caminhoImagemLogo = 'assets/imagens/logo.png';
  final String tituloIntroducao = 'Hora de Preparar o Crocodilo Dante';
  final String textoIntroducao = 'A hora do cafezinho é uma das horas mais importantes do setor: Com isso, nada melhor do que realizar uma brincadeira para selecionar o colaborador que irá preparar o "Menor Crocodilo Dante."';
  final String textoBotaoVamosComecar = 'Vamos Começar';
*/

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget> [
                Text(tituloApp,
                  style: TextStyle(fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sansita',
                    fontStyle: FontStyle.italic,
                  ),),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(subTituloApp,
                  style: TextStyle(fontSize: 60,
                      fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Sansita'),),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(caminhoImagemLogo, alignment: Alignment.center, width: 300, height: 300,),
                ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(tituloIntroducao,
                  style: TextStyle(fontSize: 23,
                      fontWeight: FontWeight.bold,
                  fontFamily: 'Sansita',
                  fontStyle: FontStyle.italic),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 366,
                  height: 100,
                  child: Text(textoIntroducao,
                    style: const TextStyle(fontSize: 15,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Sansita',
                        fontStyle: FontStyle.italic),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )),
                  ),
                    onPressed: (){
                    Navigator.pushNamed(context, '/segunda');
                    },
                    child: Text(textoBotaoVamosComecar,
                      style: const TextStyle(fontSize: 20,
                          fontFamily: 'Sansita',
                          fontStyle: FontStyle.italic),),),
              ],
            ),
          ],
        ),
    );
  }
}
