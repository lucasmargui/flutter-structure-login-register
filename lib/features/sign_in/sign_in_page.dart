// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:flutter/material.dart';
import '../../common/widgets/password_form_field.dart';
import '../../features/sign_in/sign_in_controller.dart';
import '../../features/sign_in/sign_in_state.dart';

import '../../common/constants/app_colors.dart';
import '../../common/constants/app_text_style.dart';
import '../../common/constants/routes.dart';
import '../../common/utils/validator.dart';
import '../../common/widgets/custom_bottom_sheet.dart';
import '../../common/widgets/custom_circular_progress_indicator.dart';
import '../../common/widgets/custom_text_form_field.dart';
import '../../common/widgets/custom_text_title.dart';
import '../../common/widgets/multi_text_button.dart';
import '../../common/widgets/primary_button.dart';
import '../../services/mock_auth_service.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GlobalKey<FormState> _formKey =
      GlobalKey(); // Chave global para o formulário
  final _nameController =
      TextEditingController(); // Controlador para o nome (não utilizado)
  final _emailController = TextEditingController(); // Controlador para o email
  final _passwordController =
      TextEditingController(); // Controlador para a senha
  final _controller = SignInController(
      MockAuthService()); // Controlador para o processo de login

  @override
  void dispose() {
    /// Destroi nossos controllers ao finalizar a página
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // Adiciona um ouvinte para o estado do controlador de login
    _controller.addListener(() {
      if (_controller.state is SignInLoadingState) {
        // Mostra um diálogo de progresso quando o estado é de carregamento
        showDialog(
            context: context,
            builder: (context) => CustomCircularProgressIndicator());
      }
      if (_controller.state is SignInSuccessState) {
        // Navega para uma nova tela quando o login é bem-sucedido
        Navigator.pop(context);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => Scaffold(
                      body: Center(child: Text('Nova tela')),
                    ))));
      }

      if (_controller.state is SignInErrorState) {
        // Mostra um modal de erro quando ocorre um erro no processo de login
        final error = _controller.state as SignInErrorState;
        Navigator.pop(context);
        customModalBottomSheet(context, error.message, 'Tentar novamente');
      }
      log(_controller.state
          .toString()); // Registra o estado atual do processo de login
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          color: AppColors.iceWhite,
          child: Column(
            children: [
              CustomTextTitle(), // Título personalizado da página de login
              Image.asset(
                'assets/images/sign_in_image.png', // Imagem de introdução do login
                height: 300,
              ),
            ],
          ),
        ),
        Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextFormField(
                  controller: _emailController,
                  labelText: 'email',
                  hintText: "email@email.com",
                  validator: (value) => Validator.validateEmail(
                      value), // Validação do campo de email
                ),
                PasswordFormField(
                  controller: _passwordController,
                  labelText: 'your password',
                  hintText: '****************',
                  validator: (value) => Validator.validatePassword(
                      value), // Validação do campo de senha
                ),
              ],
            )),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 16,
          ),
          child: PrimaryButton(
            text: 'Sign in', // Texto exibido no botão de login
            onPressed: () {
              final valid = _formKey.currentState != null &&
                  _formKey.currentState!.validate();

              if (valid) {
                ///lógica de login
                _controller.signIn(
                  email: _emailController.text,
                  password: _passwordController.text,
                ); // Realiza o login quando os campos são válidos
                log("continuar lógica de login");
              } else {
                log("erro ao logar"); // Registra um erro quando os campos são inválidos
              }
            },
          ),
        ),
        SizedBox(
          height: 16,
        ),
        MultiTextButton(
          onPressed: () => Navigator.popAndPushNamed(
              context, NamedRoute.signUp), // Navega para a página de cadastro
          children: [
            Text("Don't have account?",
                style: AppTextStyles.smallText.copyWith(
                  color: AppColors.grey,
                )),
            Text('Log In',
                style: AppTextStyles.smallText
                    .copyWith(color: AppColors.bluedarkThree)),
          ],
        ),
      ]),
    );
  }
}
