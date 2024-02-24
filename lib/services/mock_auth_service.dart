import '../common/models/user_model.dart';
import 'auth_service.dart';

class MockAuthService implements AuthService {
  @override
  // Função signIn() simula a autenticação do usuário com o email e senha fornecidos.
  Future<UserModel> signIn({
    required String email,
    required String password,
  }) async {
    // Simulando um atraso de 2 segundos para imitar o processo de autenticação.
    await Future.delayed(Duration(seconds: 2));
    try {
      // Retorna um UserModel com o ID baseado no hash do email como uma simulação de login bem-sucedido.
      return UserModel(id: email.hashCode, email: email);
    } catch (e) {
      // Verifica se a senha começa com '123' para simular diferentes cenários de erro.
      if (password.startsWith('123')) {
        throw 'Erro ao logar. Tente novamente';
      }
      throw 'Não foi possível realizar login neste momento. Tente mais tarde';
    }
  }

  @override
  // Função signUp() simula o registro de um novo usuário com o nome, email e senha fornecidos.
  Future<UserModel> signUp({
    String? name,
    required String email,
    required String password,
  }) async {
    // Simulando um atraso de 2 segundos para imitar o processo de registro.
    await Future.delayed(Duration(seconds: 2));
    try {
      // Simulando um erro caso a senha comece com '123'.
      if (password.startsWith('123')) {
        throw Exception();
      }
      // Retorna um UserModel com o ID baseado no hash do email como uma simulação de registro bem-sucedido.
      return UserModel(id: email.hashCode, name: name, email: email);
    } catch (e) {
      // Verifica se a senha começa com '123' para simular diferentes cenários de erro.
      if (password.startsWith('123')) {
        throw 'Senha insegura. Digite uma nova senha forte.';
      }
      throw 'Não foi possível criar sua conta neste momento. Tente mais tarde';
    }
  }
}
