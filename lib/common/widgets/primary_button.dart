// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_final_fields
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_style.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback?
      onPressed; // Função a ser executada quando o botão é pressionado
  final String? text; // Texto exibido no botão

  // Construtor do PrimaryButton
  PrimaryButton({Key? key, this.onPressed, this.text}) : super(key: key);

  // Raio da borda do botão
  BorderRadius _borderRadius = BorderRadius.circular(24.0);

  @override
  Widget build(BuildContext context) {
    // Retorna um botão primário com material design
    return Material(
      child: InkWell(
        borderRadius: _borderRadius, // Raio da borda do botão
        onTap: onPressed, // Ação a ser executada quando o botão é pressionado
        child: Ink(
          height: 48, // Altura do botão
          decoration: BoxDecoration(
            borderRadius: _borderRadius, // Raio da borda do botão
            gradient: LinearGradient(
              begin: Alignment.bottomRight, // Início do gradiente
              end: Alignment.topLeft, // Fim do gradiente
              stops: [0.1, 0.9], // Paradas do gradiente
              colors: onPressed != null
                  ? AppColors
                      .purpleGradient // Cores do gradiente quando o botão está habilitado
                  : AppColors
                      .greyDarkGradient, // Cores do gradiente quando o botão está desabilitado
            ),
          ),
          child: Align(
            child: Text(
              text ?? 'Texto do botão', // Texto exibido no botão
              style: AppTextStyles.mediumText18
                  .copyWith(color: AppColors.white), // Estilo do texto do botão
            ),
          ),
        ),
      ),
    );
  }
}
