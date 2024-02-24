abstract class SignUpState {}

// Estado inicial do processo de login
class SignUpInitialState extends SignUpState {}

// A classe SignUpLoadingState representa o estado de carregamento durante o processo de cadastro.
class SignUpLoadingState extends SignUpState {}

// A classe SignUpSuccessState representa o estado de sucesso após o cadastro ser concluído com êxito.
class SignUpSuccessState extends SignUpState {}

// A classe SignUpErrorState representa o estado de erro durante o processo de cadastro, armazenando uma mensagem de erro.
class SignUpErrorState extends SignUpState {
  final String message;
  SignUpErrorState(this.message);
}
