
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(tituloApp,
              style: const TextStyle(fontSize: 25,
                  fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),),
            Text(subTituloApp,
              style: const TextStyle(fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),),
            Image.asset(caminhoImagemLogo,
              alignment: Alignment.center,
              width: 250,
              height: 200,),
            Divider(color: Colors.black, height: 45,),
            Text('Parabéns: $nomeRecebido o número $numeroRecebido foi o escolhido.',
              style: const TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,),),
            const Text('Prepare um bom café',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
              ),),
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

          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
              )),
            ),
            onPressed: (){
              Navigator.pushNamed(context, '/segunda');
            },
              child: Text(jogarNovamente,
                style: const TextStyle(
                  fontSize: 20,
                    fontStyle: FontStyle.italic),),
            ),


          ],
        ),



      ),
    );
  }
}
