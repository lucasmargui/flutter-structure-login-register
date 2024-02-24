// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// Importações necessárias para as páginas e rotas do aplicativo
import 'common/constants/routes.dart';
import 'features/onboarding/onboarding_page.dart';
import 'features/sign_in/sign_in_page.dart';
import 'features/sign_up/sign_up_page.dart';
import 'features/splash/splash_page.dart';

// Classe principal do aplicativo
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // Método responsável por construir a interface do aplicativo
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Rota inicial do aplicativo
      initialRoute: NamedRoute.splash,
      // Definição das rotas do aplicativo
      routes: {
        NamedRoute.initial: (context) =>
            const OnboardingPage(), // Rota para a página de onboarding
        NamedRoute.splash: (context) =>
            const SplashPage(), // Rota para a página de splash
        NamedRoute.signUp: (context) =>
            const SignUpPage(), // Rota para a página de registro
        NamedRoute.signIn: (context) =>
            const SignInPage(), // Rota para a página de login
      },
    );
  }
}
