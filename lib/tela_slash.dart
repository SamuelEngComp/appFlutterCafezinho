

import 'package:app_cafezinho_nuts/textos.dart';
import 'package:flutter/material.dart';

class TelaSlash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget> [
                    Text(tituloApp,
                      style: TextStyle(fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Sansita',
                        fontStyle: FontStyle.normal,
                      ),),

                    Text(subTituloApp,
                      style: TextStyle(fontSize: 50,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Sansita'),),
                  ],
                ),
            ),

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
                    Navigator.pushNamed(context, '/segunda');
                    },
                    child: const Text(textoBotaoVamosComecar,
                      style: TextStyle(fontSize: 20,
                          fontFamily: 'Sansita',
                          fontStyle: FontStyle.normal),),),
              ],
            ),
          ],
        ),
    );
  }
}
