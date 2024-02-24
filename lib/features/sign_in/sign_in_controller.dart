// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/foundation.dart';
import '../../features/sign_in/sign_in_state.dart';

import '../../services/auth_service.dart';

class SignInController extends ChangeNotifier {
  final AuthService _service;

  SignInController(this._service);

  SignInState _state = SignInInitialState();

  SignInState get state => _state;

  void _changeState(SignInState newState) {
    _state = newState;

    //Quando o estado interno da classe SignInController muda,
    //como durante o processo de login, por exemplo,
    //é importante notificar os widgets que estão observando essa classe
    //para que eles possam atualizar sua interface de acordo com o novo estado.
    notifyListeners(); // Notifica os ouvintes sobre a mudança de estado
  }

  // Função para realizar o login
  Future<void> signIn({required String email, required String password}) async {
    // Muda o estado para o estado de carregamento durante o login
    _changeState(SignInLoadingState());

    try {
      // Tenta realizar o login usando o serviço de autenticação
      await _service.signIn(email: email, password: password);

      // Se o login for bem-sucedido, muda o estado para o estado de sucesso
      _changeState(SignInSuccessState());
    } catch (e) {
      // Se ocorrer um erro durante o login, muda o estado para o estado de erro
      _changeState(SignInErrorState(e.toString()));
    }
  }
}
