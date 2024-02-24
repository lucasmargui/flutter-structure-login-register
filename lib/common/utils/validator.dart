// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, prefer_const_literals_to_create_immutables

class Validator {
  Validator._(); // Construtor privado para impedir a instanciação da classe

  // Método para validar o nome
  static String? validateName(String? value) {
    final condition = RegExp(r"((\ *)[\wáéíóúñ]+(\ *)+)+");
    if (value != null && value.isEmpty) {
      return "Esse campo não pode ser vazio.";
    }
    if (value != null && !condition.hasMatch(value)) {
      return "Nome inválido. Digite um nome válido.";
    }
    return null;
  }

  // Método para validar o email
  static String? validateEmail(String? value) {
    final condition = RegExp(
        r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");
    if (value != null && value.isEmpty) {
      return "Esse campo não pode ser vazio.";
    }
    if (value != null && !condition.hasMatch(value)) {
      return "Email inválido. Digite um email válido.";
    }
    return null;
  }

  // Método para validar a senha
  static String? validatePassword(String? value) {
    final condition =
        RegExp(r"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$");
    if (value != null && value.isEmpty) {
      return "Esse campo não pode ser vazio.";
    }
    if (value != null && !condition.hasMatch(value)) {
      return "Senha inválida. Digite uma senha válida.";
    }
    return null;
  }

  // Método para validar a confirmação de senha
  static String? validateConfirmPassword(
    String? passwordValue,
    String? confirmPasswordValue,
  ) {
    if (passwordValue != confirmPasswordValue) {
      return "As senhas são diferentes. Por favor, corrija para continuar.";
    }
    return null;
  }
}
