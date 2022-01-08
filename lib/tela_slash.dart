

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
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(caminhoImagemLogo,
                      alignment: Alignment.center,
                      width: 280,
                      height: 280,),
                  ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(height: 50,),
                  Text(tituloIntroducao,
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,
                    fontFamily: 'Sansita',
                    fontStyle: FontStyle.normal),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 320,
                    height: 110,
                    child: Text(textoIntroducao,
                      style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Sansita',
                          fontStyle: FontStyle.normal),),
                  ),
                ],
              ),
              Row(
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
                            fontStyle: FontStyle.normal),),),
                ],
              ),
            ],
          ),
      ),
    );
  }
}
