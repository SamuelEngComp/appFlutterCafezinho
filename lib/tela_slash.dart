

import 'package:app_cafezinho_nuts/tela_inicial.dart';
import 'package:app_cafezinho_nuts/textos.dart';
import 'package:flutter/material.dart';

class TelaSlash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
                    height: constraints.maxHeight/3,
                    child: Image.asset(caminhoImagemLogo,
                        alignment: Alignment.center,
                        width: constraints.maxWidth,
                        height: constraints.maxHeight/3,),
                  ),

                  Container(
                    width: constraints.maxWidth * 0.8,
                    height: constraints.maxHeight/3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                         Text(tituloIntroducao,
                           style: TextStyle(fontSize: 20,
                               fontWeight: FontWeight.bold,
                               fontFamily: 'Sansita',
                               fontStyle: FontStyle.normal),),
                         SizedBox(height: 10,),
                         Text(textoIntroducao,
                           style: TextStyle(fontSize: 15,
                               fontWeight: FontWeight.normal,
                               fontFamily: 'Sansita',
                               fontStyle: FontStyle.normal),),
                       ],
                     ),
                    ),

                    Container(
                      width: constraints.maxWidth,
                      height: constraints.maxHeight/3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                            ),
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TelaInicial()));

                              //Navigator.pushNamed(context, '/segunda');
                            },
                            child: const Text(textoBotaoVamosComecar,
                              style: TextStyle(fontSize: 20,
                                  fontFamily: 'Sansita',
                                  fontStyle: FontStyle.normal),),
                          ),
                        ],
                      ),
                    ),

              ],
              );
            },
          ),

              ),),
    );
  }
}
