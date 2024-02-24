// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../common/constants/app_text_style.dart';
import '../../common/widgets/primary_button.dart';
import '../constants/app_colors.dart';

Future<void> customModalBottomSheet(
    BuildContext context, String content, String buttonText) {
  // Exibe um modal bottom sheet personalizado
  return showModalBottomSheet<void>(
    context: context,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(38.0), topRight: Radius.circular(38.0))),
    builder: (BuildContext context) {
      // Constrói o conteúdo do modal bottom sheet
      return Container(
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(38.0),
                topRight: Radius.circular(38.0))),
        height: 200, // Altura do modal bottom sheet
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // Exibe o texto de conteúdo do modal bottom sheet
              Text(content,
                  style: AppTextStyles.mediumText20
                      .copyWith(color: AppColors.bluedarkOne)),
              // Adiciona um botão para fechar o modal bottom sheet
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 32,
                ),
                child: PrimaryButton(
                  text: buttonText,
                  onPressed: () => Navigator.pop(
                      context), // Fecha o modal bottom sheet ao pressionar o botão
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
