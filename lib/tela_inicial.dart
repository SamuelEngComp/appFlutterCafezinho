
import 'package:flutter/material.dart';

enum SingingCharacter{um, dois, tres}

class TelaInicial extends StatefulWidget {

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}


class _TelaInicialState extends State<TelaInicial> {

  int numeroUm = 1;
  int numeroDois = 2;
  int numeroTres = 3;

  SingingCharacter? _character; //= SingingCharacter.um;

  final String tituloApp = 'Cafezinho';

  final String subTituloApp = 'NUTS';

  final String caminhoImagemLogo = 'assets/imagens/logo.png';

  final String tituloInstrucoes = 'Como irá funcionar a dinâmica:';

  final String instrucao01 = '1 - Selecione a quantidade de participantes;';

  final String instrucao02 = '2 - Digite o nome e o número do participante;';

  final String instrucao03 = '3 - Clique em "Jogar".';

  final String botaoDigitarNomesNumeros = 'Digitar Nome e Número';

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
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
              width: 100,
              height: 100,),
            Text(tituloInstrucoes,
              style: const TextStyle(fontSize: 23,
                fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),),
            buildRow(),
            Divider(color: Colors.black, height: 45,),
            buildPadding(),
            //buildElevatedButton(context),
            _buildText(),
          ],
        ),
      )

    );
  }

  Row buildRow() {
    return Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Column(
                children: [
                  Text(instrucao01,
                    style: const TextStyle(fontSize: 15,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic),),
                  Text(instrucao02,
                    style: const TextStyle(fontSize: 15,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic),),
                  Text(instrucao03,
                    style: const TextStyle(fontSize: 15,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic),),
                ],
               ),
             ],
          );
  }

  Padding buildPadding() {
    return Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Selecione:',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),

              ListTile(
                title: const Text('Um',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic),),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.um,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      print('Numero $numeroUm selecionado');
                      _character = value;
                      print('Index ${value?.index} selecionado');
                    });
                  },
                ),
              ),

              ListTile(
                title: const Text('Dois',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic),),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.dois,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                      print('Numero $numeroDois selecionado');
                    });
                  },
                ),
              ),

              ListTile(
                title: const Text('Três',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic),),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.tres,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                      print('Numero $numeroTres selecionado');
                    });
                  },
                ),
              ),
            ],
          ),
        );
  }

  ElevatedButton _buildText(){

    if(_character == null){
      return ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          )),
        ),
        onPressed: (){
          //Navigator.pushNamed(context, '/terceira');
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
               borderRadius: BorderRadius.circular(18),
             )),
           ),
           onPressed: (){
             Navigator.pushNamed(context, '/terceira');
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
}
