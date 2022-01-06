import 'package:flutter/services.dart';
import 'package:app_cafezinho_nuts/tela_resultado.dart';
import 'package:flutter/material.dart';

class TelaCampos extends StatefulWidget {

  /// Recebendo o valor do radioButton selecionado
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
  }

  @override
  Widget build(BuildContext context) {
    return controleForm();
  }

  /// Botão jogar
  ElevatedButton buildElevatedButton(){
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )),
      ),
      onPressed: (){
        validaOuNaoRedirecionamento();
      },
      child: Text(nomeBotaoJogar,
        style: const TextStyle(fontSize: 20,
          fontStyle: FontStyle.normal),),
    );
  }

  /// Campo 1 - nome e numero
  Padding buildPadding() {
    return Padding(
    padding: const EdgeInsets.all(5),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Container(
          width: 150,
          padding: EdgeInsets.all(5),
          child: TextFormField(
            keyboardType: TextInputType.text,
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
          child: TextFormField(
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

  /// Campo 2 - nome e numero
  Padding buildPadding2() {
    return Padding(
      padding: const EdgeInsets.all(5),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Container(
            width: 150,
            padding: EdgeInsets.all(5),
            child: TextFormField(
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
            child: TextFormField(
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

  /// Campo 3 - nome e numero
  Padding buildPadding3() {
    return Padding(
      padding: const EdgeInsets.all(5),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Container(
            width: 150,
            padding: EdgeInsets.all(5),
            child: TextFormField(
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
            child: TextFormField(
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

  /// variaveis criadas para receber os valores dos campos digitados
  TextEditingController controladorNome = TextEditingController();
  TextEditingController controladorNumero = TextEditingController();

  TextEditingController controladorNome2 = TextEditingController();
  TextEditingController controladorNumero2 = TextEditingController();

  TextEditingController controladorNome3 = TextEditingController();
  TextEditingController controladorNumero3 = TextEditingController();

  /// retorna os campos de acordo com o numero de participantes selecionado
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


  /// 1- Cria os Maps de acordo com o numero de participantes
  /// 2- Recebe os valores digitados dos campos
  /// 3- adiciona os numeros em uma lista e embaralha eles, seleciona o
  /// primeiro numero da lista embaralhada
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
        return tecnico01;
      }
      else if(indiceAleatorio == int.tryParse(tecnico02['numero'].toString())){
        return tecnico02;
      }
      else{
        return tecnico03;
      }
    }
  }


  /// função para permitir/impedir o direcionamento da pagina
  /// se os campos estiverem vazios... não encontrei outra forma
  /// para validar, por isso estou fazendo assim
  void validaOuNaoRedirecionamento(){

    Map nomeNumeroRetornoDaFuncao = aleatorio();

    if(numeroClicado == 2){
      if(!(controladorNome.text.isEmpty) && (controladorNome.text.trim() != '')
      && !(controladorNumero.text.isEmpty) && ((controladorNumero.text.trim() != ''))){
        if(!(controladorNome2.text.isEmpty) && (controladorNome2.text.trim() != '')
        && !(controladorNumero2.text.isEmpty) && (controladorNumero2.text.trim() != '')){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TelaResultados(
                      nomeRecebido: nomeNumeroRetornoDaFuncao['nome'],
                      numeroRecebido: nomeNumeroRetornoDaFuncao['numero'])));
        }
      }
    }
    else{

      if(!(controladorNome.text.isEmpty) && (controladorNome.text.trim() != '')
          && !(controladorNumero.text.isEmpty) && ((controladorNumero.text.trim() != ''))){
        if(!(controladorNome2.text.isEmpty) && (controladorNome2.text.trim() != '')
            && !(controladorNumero2.text.isEmpty) && (controladorNumero2.text.trim() != '')){
          if(!(controladorNome3.text.isEmpty) && (controladorNome3.text.trim() != '')
              && !(controladorNumero3.text.isEmpty) && (controladorNumero3.text.trim() != '')){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TelaResultados(
                        nomeRecebido: nomeNumeroRetornoDaFuncao['nome'],
                        numeroRecebido: nomeNumeroRetornoDaFuncao['numero'])));
          }

        }
      }

    }
  }


}

