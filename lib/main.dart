import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

void main() => runApp(PerguntaApp());


class PerguntaApp extends StatefulWidget {
  
  @override
  _PerguntaAppState createState() {
    return new _PerguntaAppState();
  }
}



class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  var pontuacaoTotal = 0;
  final List<Map<String, Object>> perguntas = [
    {
      'texto': 'Qual a cor da Melancia?',
      'respostas': [
        {'texto': 'Azul', 'nota': 0},
        {'texto': 'Vermelho', 'nota': 3}, 
        {'texto': 'Amarelo', 'nota': 0} ,
        {'texto': 'Preto', 'nota': 0},
      ],
    },
    {
       'texto': 'Qual a capital do Brasil?',
      'respostas': [
      {'texto': 'Salvador','nota': 0,},
      {'texto': 'São Paulo', 'nota': 0},
      {'texto': 'Acre', 'nota':0}, 
      {'texto': 'Brasilia' , 'nota':4},
      ],
    },
    {
     'texto': 'Qual jogador fez o gol na cróacia?',
      'respostas': [
      {'texto': 'Neymar', 'nota':2},
      {'texto': 'Richarlison', 'nota':0},
      {'texto': 'Casemiro', 'nota':0},
      {'texto': 'Vini JR', 'nota':8},
     ],
    }

    ,{ 
      'texto': 'Qual filme Harry potter faz parte?',
      'respostas': [
        {'texto': 'Senhor dos anéis', 'nota':0},
        {'texto': 'Harry potter', 'nota':1}, 
        {'texto': 'Crepusculo', 'nota':0},
        {'texto': 'Sobrenatural', 'nota':0}
        ],
    },

        {
      'texto': 'Qual desses animais é o rei da selva?',
      'respostas': [
        {'texto': 'Leão', 'nota':5},
        {'texto': 'Cachorro', 'nota':0},
        {'texto': 'Gato', 'nota':0},
        {'texto': 'Cavalo', 'nota':0}
        ],
    },
 {
      'texto': 'Qual o time foi campeão brasileiro em 2012?',
      'respostas': [
        {'texto': 'Fluminense', 'nota':7}, 
        {'texto': 'Vasco', 'nota':0},
        {'texto': 'Botafogo', 'nota':0}, 
        {'texto': 'Flamengo', 'nota':0},
        ],
    },

  {
      'texto': 'Qual estilo é cantado por Michael Jackson?',
      'respostas': [
        {'texto': 'Funk', 'nota': 0},
        {'texto': 'Pop', 'nota': 6},
        {'texto': 'Trap', 'nota': 0},
        {'texto': 'Sertanejo', 'nota':0}
         ],
    },


  ];

  void responder(int nota) {
    if (temPerguntaSelecionada) {
      setState(() {
        perguntaSelecionada++;
        pontuacaoTotal += nota;
      });
    }
  }

  void reiniciarQuestionario() {
    setState(() {
      perguntaSelecionada = 0;
      pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: perguntas,
                perguntaSelecionada: perguntaSelecionada,
                quandoResponder: responder,
              )
            : Resultado(pontuacaoTotal, reiniciarQuestionario),
      ),
    );
  }
}
