
import 'package:app_cafezinho_nuts/tela_resultado.dart';
import 'package:flutter/material.dart';
import 'dart:math';

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
                if(pad.length == 2)
                  buildPadding1(),
                  buildPadding2(),
                  buildElevatedButton(),
                if(pad.length == 3)
                  buildPadding1(),
                  buildPadding2(),
                  buildPadding3(),
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
                nomeRecebido: controladorNome1.text,
                numeroRecebido: controladorNumero1.text)));
      },
      child: Text(nomeBotaoJogar,
        style: TextStyle(fontSize: 20,
          fontStyle: FontStyle.italic),),
    );
  }

  Padding buildPadding1() {
    return Padding(
    padding: const EdgeInsets.all(5),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Container(
          width: 150,
          padding: EdgeInsets.all(5),
          child: TextField(
            controller: controladorNome1,
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
            controller: controladorNumero1,
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

  Padding buildPadding2() {
    return Padding(
      padding: const EdgeInsets.all(5),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Container(
            width: 150,
            padding: EdgeInsets.all(5),
            child: TextField(
              controller: controladorNome2,
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
              controller: controladorNumero2,
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

  Padding buildPadding3() {
    return Padding(
      padding: const EdgeInsets.all(5),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Container(
            width: 150,
            padding: EdgeInsets.all(5),
            child: TextField(
              controller: controladorNome3,
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
              controller: controladorNumero3,
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

  TextEditingController controladorNome1 = TextEditingController();
  TextEditingController controladorNumero1 = TextEditingController();

  TextEditingController controladorNome2 = TextEditingController();
  TextEditingController controladorNumero2 = TextEditingController();

  TextEditingController controladorNome3 = TextEditingController();
  TextEditingController controladorNumero3 = TextEditingController();

  List<Widget> camposParaPreencher(){
    List<Widget> pad = [];
    for(int i=0; i<numeroClicado; i++){
      pad.add(buildPadding1());
    }
      return pad;
  }

  /*Map<String, String> aleatorio(){
    var tecnico01 = Map();
    var tecnico02 = Map();
    var tecnico03 = Map();

    tecnico01 = {'nome': controladorNome1.text, 'numero': controladorNumero1.text};
    tecnico02 = {'nome': controladorNome2.text, 'numero': controladorNumero2.text};
    tecnico03 = {'nome': controladorNome3.text, 'numero': controladorNumero3.text};

    int tamanhoEscolhido = camposParaPreencher().length;

    Random rand = Random();

    //inicia um numero aleatorio e verifica se ele esta igual aos numeros selecionados
    int num = rand.nextInt(100);

    //logica do numero aleatorio entre tres numeros
    while(num != 3){


      //repetir ate encontrar um numero aleatorio que tenha pertencente aos numeros selecionados
      int num = rand.nextInt(100);
    }

    Random().nextInt(max)



    return nomeNumeroAleatorio;
  }*/

}

