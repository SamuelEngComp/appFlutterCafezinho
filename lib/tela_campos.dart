
import 'package:app_cafezinho_nuts/tela_resultado.dart';
import 'package:flutter/material.dart';

class TelaCampos extends StatefulWidget {

  final int numeroSelecionado;


  const TelaCampos({Key? key, required int this.numeroSelecionado}) : super(key: key);


  @override
  State<TelaCampos> createState() => _TelaCamposState();
}

class _TelaCamposState extends State<TelaCampos>{

  final String nomeBotaoJogar = 'Jogar';

  late int numeroClicado;

  @override
  void initState() {
    numeroClicado = widget.numeroSelecionado;
    print('numero clicado: $numeroClicado');

  }

  @override
  Widget build(BuildContext context) {

    List<Widget> pad = camposParaPreencher();

    return Scaffold(
          body: SafeArea(
            child: Column(
              children: <Widget> [
                for(var i in pad)
                  i,

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
          borderRadius: BorderRadius.circular(10),
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

  List<Widget> camposParaPreencher(){
    List<Widget> pad = [];
    for(int i=0; i<numeroClicado; i++){
      pad.add(buildPadding());
    }
      return pad;
  }

}

