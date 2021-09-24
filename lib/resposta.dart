import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;
  
  Resposta(this.texto, this.quandoSelecionado);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.blue,
          elevation: 15,
          shadowColor: Colors.purple),
        child: Text(texto,
          style: const TextStyle(color: Colors.white,),),
        onPressed: quandoSelecionado,
      ),
    );
  }
}