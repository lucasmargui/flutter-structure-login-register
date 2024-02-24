// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Retorna um indicador de progresso circular personalizado, centralizado na tela
    return Center(
      child: CircularProgressIndicator(
        color: AppColors.iceWhite, // Cor do indicador de progresso
      ),
    );
  }
}
