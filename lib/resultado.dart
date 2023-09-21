import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

String get fraseResultado{
if (pontuacao < 15){
  return 'Você é bom!';
}else if(pontuacao <= 17){ 
  return 'parabéns!';
}else if (pontuacao >=25){ 
  return 'Impressionante!';
}else{ 
  return'Tente novamente!';
}

  
}

  @override
  Widget build(BuildContext context) {
    return Column(
       children: <Widget>[ 
        Center( 
          child:Text(   
          fraseResultado, 
       style: TextStyle(fontSize: 27),
          ),
        ),
        TextButton( 
          onPressed:quandoReiniciarQuestionario, 
          child: Text('Reiniciar?')
,
          style: TextButton.styleFrom(
            backgroundColor: Colors.grey,
            primary: Colors.white
          ),
        )
      ],
    );
  }
 }