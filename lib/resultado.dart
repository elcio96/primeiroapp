import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Muito forte filho!';
    } else {
      return 'Nivel JEDI!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        Text(
          'Pontuação = ${pontuacao.toString()}',
          style: TextStyle(fontSize: 15, color: Colors.red),
        ),
        TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              elevation: 15,
              shadowColor: Colors.purple),
          child: Text(
            'Reiniciar',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: quandoReiniciarQuestionario,
        ),
      ],
    );
  }
}
