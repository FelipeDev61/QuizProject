import 'package:flutter/material.dart';

class Respostas extends StatelessWidget{ 
  final String texto;
  final void Function() onselecao;

  Respostas(this.texto, this.onselecao);

  @override
 Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 248, 212, 212), // Cor de fundo do botão
          onPrimary: Color.fromARGB(255, 0, 0, 0), // Cor do texto
        ),
        child: Text(texto),
        onPressed: onselecao,
      ),
    );
  }
}