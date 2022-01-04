
import 'package:app_cafezinho_nuts/tela_resultado.dart';
import 'package:flutter/material.dart';

class TelaCampos extends StatefulWidget {


  @override
  State<TelaCampos> createState() => _TelaCamposState();
}

class _TelaCamposState extends State<TelaCampos>{

  final String nomeBotaoJogar = 'Jogar';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                buildPadding(),
                buildPadding(),
                buildPadding(),
                buildElevatedButton(),
              ],
            ),
          ),
        );
  }

  ElevatedButton buildElevatedButton(){
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        )),
      ),
      onPressed: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => TelaResultados(
                nomeRecebido: 'Mister Bruno',
                numeroRecebido: '3')));
      },
      child: Text(nomeBotaoJogar,
        style: TextStyle(fontSize: 20,
          fontStyle: FontStyle.italic),),
    );
  }

  Padding buildPadding() {
    return Padding(
    padding: const EdgeInsets.all(5),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Container(
          width: 150,
          padding: EdgeInsets.all(5),
          child: TextField(
            maxLength: 20,
            minLines: 1,
            maxLines: 1,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              hintText: 'Nome',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        Container(
          width: 150,
          padding: EdgeInsets.all(5),
          child: TextField(
            maxLength: 4,
            minLines: 1,
            maxLines: 1,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              hintText: 'Número',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
      ],
    ),
  );
  }
}

