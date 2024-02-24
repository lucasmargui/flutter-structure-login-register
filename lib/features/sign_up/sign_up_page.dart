// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:flutter/material.dart';
import '../../common/utils/uppercase_text_formatter.dart';
import '../../common/widgets/password_form_field.dart';
import '../../features/sign_up/sign_up_controller.dart';
import '../../features/sign_up/sign_up_state.dart';

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

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey =
      GlobalKey(); // Chave global para o formulário
  final _nameController =
      TextEditingController(); // Controlador para o campo de nome
  final _emailController =
      TextEditingController(); // Controlador para o campo de email
  final _passwordController =
      TextEditingController(); // Controlador para o campo de senha
  final _controller = SignUpController(
      MockAuthService()); // Controlador para o processo de cadastro

  @override
  void dispose() {
    /// Destrói nossos controllers quando a página é descartada
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // Configurações iniciais ao iniciar a página

    // Adiciona um ouvinte ao controlador para monitorar mudanças de estado
    _controller.addListener(() {
      if (_controller.state is SignUpLoadingState) {
        // Se o estado for de carregamento, exibe um diálogo de progresso
        showDialog(
            context: context,
            builder: (context) => CustomCircularProgressIndicator());
      }
      if (_controller.state is SignUpSuccessState) {
        // Se o cadastro for bem-sucedido, navega para a próxima tela
        Navigator.pop(context);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => Scaffold(
                      body: Center(child: Text('Nova tela')),
                    ))));
      }

      if (_controller.state is SignUpErrorState) {
        // Se houver um erro durante o cadastro, exibe um modal de erro
        final error = _controller.state as SignUpErrorState;
        Navigator.pop(context);
        customModalBottomSheet(context, error.message, 'Tentar novamente');
      }
      log(_controller.state
          .toString()); // Registra o estado atual para fins de depuração
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
              CustomTextTitle(), // Título personalizado
              Image.asset(
                  'assets/images/sign_up_image.png'), // Imagem de cadastro
            ],
          ),
        ),
        Form(
            key: _formKey, // Chave global do formulário
            child: Column(
              children: [
                CustomTextFormField(
                  controller: _nameController,
                  labelText: 'your name',
                  hintText: "Digite o seu nome",
                  inputFormatters: [UpperCaseTextInputFormatter()],
                  validator: (value) => Validator.validateName(
                      value), // Validação do campo de nome
                ),
                CustomTextFormField(
                  controller: _emailController,
                  labelText: 'email',
                  hintText: "email@email.com",
                  validator: (value) => Validator.validateEmail(
                      value), // Validação do campo de email
                ),
                PasswordFormField(
                  controller: _passwordController,
                  labelText: 'choose your password',
                  hintText: '****************',
                  helperText:
                      'Must have at least 8 characters, 1 capital letter and 1 number',
                  validator: (value) => Validator.validatePassword(
                      value), // Validação do campo de senha
                ),
                PasswordFormField(
                  labelText: 'Confirm your password',
                  hintText: '****************',
                  validator: (value) => Validator.validateConfirmPassword(
                      value,
                      _passwordController
                          .text), // Validação do campo de confirmação de senha
                )
              ],
            )),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 16,
          ),
          child: PrimaryButton(
            text: 'Sign Up',
            onPressed: () {
              final valid = _formKey.currentState != null &&
                  _formKey.currentState!.validate();

              if (valid) {
                /// lógica de cadastro
                _controller.SignUp(
                  name: _nameController.text,
                  email: _emailController.text,
                  password: _passwordController.text,
                );
                log("continuar lógica de cadastro"); // Registra a continuação da lógica de cadastro
              } else {
                log("erro ao cadastrar"); // Registra um erro ao cadastrar
              }
            },
          ),
        ),
        SizedBox(
          height: 16,
        ),
        MultiTextButton(
          onPressed: () => Navigator.popAndPushNamed(
              context, NamedRoute.signIn), // Navega para a página de login
          children: [
            Text('Already have account?',
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
