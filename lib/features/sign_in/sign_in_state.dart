abstract class SignInState {
} // Classe abstrata representando o estado do processo de login

// A classe SignInLoadingState está herdando de SignInState
class SignInInitialState extends SignInState {}
// Estado inicial do processo de login

class SignInLoadingState extends SignInState {
} // Estado durante o carregamento do processo de login

class SignInSuccessState extends SignInState {
} // Estado de sucesso do processo de login

class SignInErrorState extends SignInState {
  final String message; // Mensagem de erro associada ao estado de erro
  SignInErrorState(
      this.message); // Construtor para o estado de erro com a mensagem de erro
}
