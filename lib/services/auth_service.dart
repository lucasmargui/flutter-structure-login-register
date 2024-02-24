import '../common/models/user_model.dart';

abstract class AuthService {
  // Função signUp() para registrar um novo usuário com o nome, email e senha fornecidos.
  Future<UserModel> signUp({
    String? name,
    required String email,
    required String password,
  });

  // Função signIn() para autenticar um usuário com o email e senha fornecidos.
  Future<UserModel> signIn({
    required String email,
    required String password,
  });
}
