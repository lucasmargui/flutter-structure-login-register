// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MultiTextButton extends StatelessWidget {
  final List<Text> children; // Lista de textos exibidos no botão
  final VoidCallback?
      onPressed; // Callback executado quando o botão é pressionado

  const MultiTextButton(
      {Key? key, required this.children, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Retorna um botão de texto que contém uma linha de textos
    return TextButton(
      onPressed: onPressed, // Ação a ser executada quando o botão é pressionado
      child: Row(
        mainAxisSize: MainAxisSize.min, // Tamanho principal mínimo da linha
        mainAxisAlignment: MainAxisAlignment
            .center, // Alinhamento central dos elementos da linha
        children: children, // Os textos a serem exibidos no botão
      ),
    );
  }
}
