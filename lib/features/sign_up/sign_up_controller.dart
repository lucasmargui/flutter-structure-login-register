// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, prefer_const_literals_to_create_immutables

import '../../features/sign_up/sign_up_state.dart';
import 'package:flutter/foundation.dart';
import '../../services/auth_service.dart';

class SignUpController extends ChangeNotifier {
  SignUpState _state =
      SignUpInitialState(); // Estado inicial do processo de cadastro

  final AuthService
      _service; // Serviço de autenticação utilizado pelo controlador
  SignUpController(this._service);

  // Retorna o estado atual do processo de cadastro
  SignUpState get state => _state;

  // Método privado para alterar o estado do processo de cadastro
  void _changeState(SignUpState newState) {
    _state = newState; // Atualiza o estado para o novo estado fornecido
    notifyListeners(); // Notifica os ouvintes sobre a mudança de estado
  }

  // Função para realizar o cadastro de um novo usuário
  Future<void> SignUp(
      {required String name,
      required String email,
      required String password}) async {
    _changeState(
        SignUpLoadingState()); // Altera o estado para o estado de carregamento

    try {
      await _service.signUp(
          name: name,
          email: email,
          password:
              password); // Realiza o cadastro usando o serviço de autenticação

      _changeState(
          SignUpSuccessState()); // Altera o estado para o estado de sucesso após o cadastro bem-sucedido
    } catch (e) {
      _changeState(SignUpErrorState(e
          .toString())); // Altera o estado para o estado de erro em caso de falha no cadastro
    }
  }
}
