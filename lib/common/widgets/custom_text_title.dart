// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_style.dart';

class CustomTextTitle extends StatelessWidget {
  final String? text; // O texto a ser exibido

  const CustomTextTitle({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Retorna um widget de texto personalizado, centralizado verticalmente com um padding
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 30), // Preenchimento vertical
      child: Text(
          text ??
              'Escolha o Texto', // Texto a ser exibido, com um valor padrão se for nulo
          textAlign: TextAlign.center, // Alinhamento do texto
          style: AppTextStyles.mediumText
              .copyWith(color: AppColors.bluedarkOne)), // Estilo do texto
    );
  }
}
