class UserModel {
  final int? id; // Identificador do usuário
  final String? name; // Nome do usuário
  final String? email; // Email do usuário
  final String? password; // Senha do usuário

  // Construtor da classe UserModel, que recebe parâmetros opcionais para inicializar os campos
  UserModel({this.id, this.name, this.email, this.password});
}
