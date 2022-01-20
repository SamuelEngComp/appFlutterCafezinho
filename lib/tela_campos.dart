import 'package:app_cafezinho_nuts/textos.dart';
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
    validarNumerosIguais();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(tituloApp + " " + subTituloApp,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 20,
          ),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: controleForm(),

        ),
      ),
    );
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
            setState(() {
              if(validarNumerosIguais() != 0){
                validaOuNaoRedirecionamento();
              }
              else{
                showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                  return Container(
                    height: 100,
                    color: Colors.white,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text('Campos vazios ou iguais ! ! ! ',
                          style: TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,),),
                          ElevatedButton(
                            child: const Text('Fechar',
                            style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.italic,)),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                            ),
                            onPressed: () => Navigator.pop(context),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
              }
            });
          },

          child: Text(nomeBotaoJogar,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic),),
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
                label: const Text('Nome',
                  style: TextStyle(fontWeight: FontWeight.normal, fontStyle: FontStyle.italic,
                ),),
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
                label: const Text('Número',
                  style: TextStyle(fontWeight: FontWeight.normal, fontStyle: FontStyle.italic,),
                ),
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
                label: const Text('Nome',
                  style: TextStyle(fontWeight: FontWeight.normal, fontStyle: FontStyle.italic,),),
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
                label: const Text('Número',
                  style: TextStyle(fontWeight: FontWeight.normal, fontStyle: FontStyle.italic,),),
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
                label: const Text('Nome',
                  style: TextStyle(fontWeight: FontWeight.normal, fontStyle: FontStyle.italic,),),
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
                label: const Text('Número',
                  style: TextStyle(fontWeight: FontWeight.normal, fontStyle: FontStyle.italic,),),
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
  Widget controleForm(){

    if(numeroClicado == 2){
      return Column(
            children: <Widget> [
              SizedBox(height: 35,),
              buildPadding(),
              buildPadding2(),
              buildElevatedButton(),
            ],
          );
    }
    else{
      return Column(
        children: <Widget> [
          SizedBox(height: 35,),
          buildPadding(),
          buildPadding2(),
          buildPadding3(),
          buildElevatedButton(),
        ],
      );
    }
  }

  int validarNumerosIguais(){

    if(widget.numeroSelecionado == 2){
      int? numero01 = int.tryParse(controladorNumero.text);
      int? numero02 = int.tryParse(controladorNumero2.text);
      String nome01 = controladorNome.text;
      String nome02 = controladorNome2.text;
      if(numero01 == numero02 || nome01.trim() == nome02.trim() || nome01.isEmpty == nome02.isEmpty
      || nome01.isEmpty || nome02.isEmpty){
        return 0;
      }
      else{
        return 1;
      }
    }else if(widget.numeroSelecionado == 3){
      int? numero01 = int.tryParse(controladorNumero.text);
      int? numero02 = int.tryParse(controladorNumero2.text);
      int? numero03 = int.tryParse(controladorNumero3.text);
      String nome01 = controladorNome.text;
      String nome02 = controladorNome2.text;
      String nome03 = controladorNome3.text;
      if(numero01 == numero02 || numero01 == numero03 || numero02 == numero03 ||
          nome01.trim() == nome02.trim() || nome01.trim() == nome03.trim() ||
          nome02.trim() == nome03.trim() || nome01.isEmpty || nome02.isEmpty || nome03.isEmpty){
        return 0;
      }
      else{
        return 1;
      }
    }else{
      return 0;
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