// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'package:flutter/material.dart';
import '../../common/constants/app_colors.dart';
import '../../common/constants/app_text_style.dart';
import '../../common/constants/routes.dart';
import '../../common/widgets/custom_circular_progress_indicator.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Chamada da função init() durante a inicialização do estado da página.
    init();
  }

  // Função init() que inicia um temporizador para simular um tempo de espera de 2 segundos antes de navegar para a tela de Onboarding.
  Timer init() {
    return Timer(Duration(seconds: 2), () {
      navigateToOnBoarding();
    });
  }

  // Função navigateToOnBoarding() que navega para a tela de Onboarding após o tempo de espera.
  void navigateToOnBoarding() {
    Navigator.pushReplacementNamed(context, NamedRoute.initial);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            stops: [0.1, 0.9],
            colors: AppColors.purpleGradient,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Logo',
              // Aplicação de estilos de texto através do método copyWith, que copia as configurações de estilo de AppTextStyles e aplica a cor branca.
              style: AppTextStyles.bigText.copyWith(color: AppColors.white),
            ),
            SizedBox(
              height: 20,
            ),
            // Widget de indicador de progresso circular personalizado.
            CustomCircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
