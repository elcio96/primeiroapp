import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  void responder() {
    print('Pergunta respondida!');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  elevation: 15,
                  shadowColor: Colors.purple),
              child: Text(
                'Resposta 1',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                print('Resposta 1!');
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  elevation: 15,
                  shadowColor: Colors.purple),
              child: Text(
                'Resposta 2',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                print('Resposta 2!');
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  elevation: 15,
                  shadowColor: Colors.purple),
              child: Text(
                'Resposta 3',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                print('Resposta 3!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
