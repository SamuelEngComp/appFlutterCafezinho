
import 'package:app_cafezinho_nuts/tela_campos.dart';
import 'package:app_cafezinho_nuts/tela_resultado.dart';
import 'package:app_cafezinho_nuts/textos.dart';
import 'package:flutter/material.dart';

enum SingingCharacter{dois, tres}

class TelaInicial extends StatefulWidget {

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}


class _TelaInicialState extends State<TelaInicial> {

  int numeroDois = 2;
  int numeroTres = 3;

  SingingCharacter? _character; //= SingingCharacter.um;

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
                  children: const <Widget> [
                    Text(tituloApp,
                      style: TextStyle(fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),),
                    Text(subTituloApp,
                      style: TextStyle(fontSize: 50,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),),
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                 Text(tituloInstrucoes,
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),),
              ],
            ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: const [
                SizedBox(height: 10,),
                Text(instrucao01,
                  style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic),),
                Text(instrucao02,
                  style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic),),
                Text(instrucao03,
                  style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic),),
              ],
            ),
          ],
        ),

            Expanded(
              flex: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Selecione:',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio<SingingCharacter>(
                        value: SingingCharacter.dois,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                            print('Numero $numeroDois selecionado');
                          });
                        },
                      ),

                      const Text(
                        'Dois',
                        style: TextStyle(
                            fontSize: 15,
                            fontStyle: FontStyle.italic
                        ),

                      ),

                      Radio<SingingCharacter>(
                        value: SingingCharacter.tres,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                            print('Numero $numeroTres selecionado');
                          });
                        },
                      ),

                      const Text(
                        'Três',
                        style: TextStyle(
                            fontSize: 15,
                            fontStyle: FontStyle.italic
                        ),

                      ),

                    ],
                  )

                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildText(),
              ],
            ),

          ],
        ),
      )

    );
  }

  ElevatedButton _buildText(){

    if(_character == null){
      return ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
        ),
        onPressed: (){
          //Navigator.pushNamed(context, '/terceira');
          print('nao selecionou nada');
        },
        child: Text(botaoDigitarNomesNumeros,
          style: const TextStyle(
              fontSize: 20,
              fontFamily: 'Sansita',
              fontStyle: FontStyle.italic),),
      );
    }
    else{
      return buildElevatedButton(context);
    }
  }

  ElevatedButton buildElevatedButton(BuildContext context) {
    return ElevatedButton(
           style: ButtonStyle(
             shape: MaterialStateProperty.all(RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(10),
             )),
           ),
           onPressed: (){

             Navigator.push(
                 context,
                 MaterialPageRoute(
                     builder: (context) => TelaCampos(numeroSelecionado: verificaBotaoClicado(_character),)));

             //Navigator.pushNamed(context, '/terceira');
           },
           child: Text(botaoDigitarNomesNumeros,
             style: const TextStyle(
                 fontSize: 20,
                 fontFamily: 'Sansita',
                 fontStyle: FontStyle.italic),),
        );
  }

  /*void ativarBotao(){
    bool ativar = false;

    if(_character == null){
      setState(() {
        ativar = false;
      });
    }
    else{
      setState(() {
        ativar = true;
        Navigator.pushNamed(context, '/terceira');
      });
    }

  }*/

  int verificaBotaoClicado(SingingCharacter? character){

    if(character != null){
      if(character.index == 0){
        return 2;
      }
      if(character.index == 1){
        return 3;
      }
    }
    return 0;
  }


}
