import 'package:flutter/services.dart';
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

    return controleForm();
  }

  ElevatedButton buildElevatedButton(){
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )),
      ),
      onPressed: (){

        Map nomeNumeroRetornoDaFuncao = aleatorio();

        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => TelaResultados(
                nomeRecebido: nomeNumeroRetornoDaFuncao['nome'],
                numeroRecebido: nomeNumeroRetornoDaFuncao['numero'])));
      },
      child: Text(nomeBotaoJogar,
        style: const TextStyle(fontSize: 20,
          fontStyle: FontStyle.normal),),
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
            controller: controladorNome,
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
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            controller: controladorNumero,
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
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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

  TextEditingController controladorNome = TextEditingController();
  TextEditingController controladorNumero = TextEditingController();

  TextEditingController controladorNome2 = TextEditingController();
  TextEditingController controladorNumero2 = TextEditingController();

  TextEditingController controladorNome3 = TextEditingController();
  TextEditingController controladorNumero3 = TextEditingController();

  Scaffold controleForm(){

    if(numeroClicado == 2){
      return Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget> [
              buildPadding(),
              buildPadding2(),
              buildElevatedButton(),
            ],
          ),
        ),
      );
    }
    else{
      return Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget> [
              buildPadding(),
              buildPadding2(),
              buildPadding3(),
              buildElevatedButton(),
            ],
          ),
        ),
      );
    }
  }




  Map aleatorio(){

    int tamanhoEscolhido = numeroClicado;
    int? indiceAleatorio;

    if(tamanhoEscolhido == 2){
      var tecnico01 = Map();
      var tecnico02 = Map();

      //depois trocar isso aqui por int.tryParse()
      tecnico01 = {'nome': controladorNome.text, 'numero': controladorNumero.text};
      tecnico02 = {'nome': controladorNome2.text, 'numero': controladorNumero2.text};

      var numerosDosTecnicos = [int.tryParse(controladorNumero.text), int.tryParse(controladorNumero2.text)];

      for(int i=0; i<100; i++){
        numerosDosTecnicos.shuffle();
        indiceAleatorio = numerosDosTecnicos[0];
      }

      if(indiceAleatorio == int.tryParse(tecnico01['numero'].toString())){
        return tecnico01;
      }
      else{
        return tecnico02;
      }
    }
    else{
      var tecnico01 = Map();
      var tecnico02 = Map();
      var tecnico03 = Map();

      tecnico01 = {'nome': controladorNome.text, 'numero': controladorNumero.text};
      tecnico02 = {'nome': controladorNome2.text, 'numero': controladorNumero2.text};
      tecnico03 = {'nome': controladorNome3.text, 'numero': controladorNumero3.text};

      var numerosDosTecnicos = [int.tryParse(controladorNumero.text),
        int.tryParse(controladorNumero2.text),
        int.tryParse(controladorNumero3.text)];

      for(int i=0; i<100; i++){
        numerosDosTecnicos.shuffle();
        indiceAleatorio = numerosDosTecnicos[0];
      }

      if(indiceAleatorio == int.tryParse(tecnico01['numero'].toString())){

        print('Tecnico 01 escolhido: $tecnico01');

        return tecnico01;
      }
      else if(indiceAleatorio == int.tryParse(tecnico02['numero'].toString())){

        print('Tecnico 02 escolhido: $tecnico02');

        return tecnico02;
      }
      else{

        print('Tecnico 03 escolhido: $tecnico03');

        return tecnico03;
      }
    }
  }

}

