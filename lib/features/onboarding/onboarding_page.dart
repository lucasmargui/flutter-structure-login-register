// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';
import 'package:app_login_cadastro/common/widgets/custom_text_title.dart';
import 'package:flutter/material.dart';
import '../../common/constants/app_colors.dart';
import '../../common/constants/app_text_style.dart';
import '../../common/constants/routes.dart';
import '../../common/widgets/multi_text_button.dart';
import '../../common/widgets/primary_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Retorna a página de introdução (onboarding) com um esquema de design predefinido
    return Scaffold(
      backgroundColor: AppColors.iceWhite, // Cor de fundo da página
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
                'assets/images/onboarding_image.png'), // Imagem de introdução
          ),
          CustomTextTitle(), // Título personalizado da página
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 16,
            ),
            child: PrimaryButton(
              onPressed: () {
                // Navega para a página de login quando o botão é pressionado
                Navigator.pushNamed(context, NamedRoute.signIn);
              },
            ),
          ),
          SizedBox(
            height: 16,
          ),
          MultiTextButton(
            onPressed: () => log(
                'message'), // Ação a ser executada quando o botão é pressionado
            children: [
              // Botão de texto com duas partes: "Already have account?" e "Log In"
              Text('Already have account?',
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.grey,
                  )),
              Text('Log In',
                  style: AppTextStyles.smallText
                      .copyWith(color: AppColors.bluedarkThree)),
            ],
          ),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
