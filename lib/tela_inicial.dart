
import 'package:app_cafezinho_nuts/tela_campos.dart';
import 'package:app_cafezinho_nuts/textos.dart';
import 'package:flutter/material.dart';

/// Enum criada para simular o radio button
enum SingingCharacter{dois, tres}

class TelaInicial extends StatefulWidget {

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}


class _TelaInicialState extends State<TelaInicial> {


  SingingCharacter? _character; //= SingingCharacter.um;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          Navigator.pop(context);
        },),
        title: const Text(tituloApp + " " + subTituloApp,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
      ),

      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: LayoutBuilder(
            builder: (_, constraints){
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight/4,
                    child: Image.asset(caminhoImagemLogo,
                      alignment: Alignment.center,
                      width: constraints.maxWidth,
                      height: constraints.maxHeight/4,),
                  ),



                  Container(
                    width: constraints.maxWidth * 0.8,
                    height: constraints.maxHeight/4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(tituloInstrucoes,
                            style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal),),
                          Text(instrucao01,
                            style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal),),
                          Text(instrucao02,
                            style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal),),
                          Text(instrucao03,
                            style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal),),

                        ],
                    ),
                  ),

                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight/4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Selecione:',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal),
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
                                });
                              },
                            ),

                            const Text(
                              'Dois',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.normal
                              ),

                            ),

                            Radio<SingingCharacter>(
                              value: SingingCharacter.tres,
                              groupValue: _character,
                              onChanged: (SingingCharacter? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),

                            const Text(
                              'Três',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.normal
                              ),

                            ),

                          ],
                        )

                      ],
                    ),
                  ),

                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight/4,
                    child: Column(
                      children: [
                        verificaRadioSelecionado(),
                      ],
                    ),
                  ),

                ],
              );
            },
          ),
        ),
      )

    );
  }

  /// So ativa o botao se o radio button for selecionado
  ElevatedButton verificaRadioSelecionado(){
    if(_character == null){
      return ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
        ),
        onPressed: (){},
        child: const Text(botaoDigitarNomesNumeros,
          style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.normal),),
      );
    }
    else{
      return buildElevatedButton(context);
    }
  }

  /// Botao construido e com o redirecionamento passando o radioButton selecionado
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
           },
           child: const Text(botaoDigitarNomesNumeros,
             style: TextStyle(
                 fontSize: 20,
                 fontStyle: FontStyle.normal),),
        );
  }

  /// Retorna 2 ou 3, de acordo com o radioButton selecionado,
  /// o index 0 significa o radio button 2 e index 1 significa o
  /// radio button 3
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
