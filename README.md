<H1 align="center">Flutter Login/Cadastro</H1>
<p align="center">🚀 Desenvolvimento de uma estrutura de login/cadastro para referências futuras</p>

## Recursos Utilizados
Flutter 3.3.5





## SPLASH PAGE

O layout consiste em dois elementos centralizados verticalmente na tela, dispostos em uma coluna. Um desses elementos é um logotipo, enquanto o outro é um círculo de carregamento. A tela possui um plano de fundo com uma cor em gradiente.

Comportamento esperado: Após um intervalo de tempo predefinido, a tela deverá ser redirecionada para a OnboardingPage.

<div align="center">
  <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/625864e4-fcc7-448b-8e93-54d864d1afb6" style="width:45%">
</div>


## ONBOARDING PAGE



Widgets Principais:
O layout inclui 4 elementos principais dispostos em uma coluna:

- Uma imagem
- Um texto grande
- Um botão
- Um texto pequeno

Comportamento Esperado:

- Ao pressionar o botão, será feito o redirecionamento para a tela de SIGN IN.
- Ao pressionar o texto pequeno, será feito o redirecionamento para a tela de SIGN UP.



<div align="center">
  <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/40815241-a826-4e96-8aa7-f563089d0606" style="width:45%">
</div>


## SIGN UP PAGE

Widgets Principais:
O layout contém 8 elementos principais dispostos em uma coluna:

- Um texto grande: Utiliza o mesmo texto presente no onboarding, podendo ser modularizado como CustomTitleText.
- Uma imagem.
- 4 campos de formulário: Sendo campos de formulário, podem ser modularizados.
- Um botão: Utiliza o mesmo estilo de botão presente no onboarding, podendo ser modularizado como PrimaryButton.
- Um texto pequeno: Utiliza o mesmo estilo de texto presente no onboarding, podendo ser modularizado.

Comportamento Esperado:

- Ao pressionar "Sign Up", será realizada uma validação nos campos antes de prosseguir com o fluxo de dados.
- Ao pressionar no texto pequeno, será redirecionado para a tela de login.
   
<div align="center">
  <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/1c5887ea-2651-4b52-a353-397fae12f89b" style="width:45%">
</div>


## SIGN IN PAGE
Widgets Principais:
O layout contém 8 elementos principais dispostos em uma coluna:

- Um texto grande: Utiliza o mesmo texto presente no onboarding, podendo ser modularizado como CustomTitleText.
- Uma imagem.
- 2 campos de formulário: Sendo campos de formulário, podem ser modularizados.
- Um botão: Utiliza o mesmo estilo de botão presente no onboarding, podendo ser modularizado como PrimaryButton.
- Um texto pequeno: Utiliza o mesmo estilo de texto presente no onboarding, podendo ser modularizado.

Comportamento Esperado:

- Ao pressionar "Sign In", será realizada uma validação nos campos antes de prosseguir com o fluxo de dados.
- Ao pressionar no texto pequeno, será redirecionado para a tela de cadastro.




<div align="center">
   <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/5748b092-806a-42aa-abbc-a7b3b8604d7b" style="width:45%">
</div>


## Lógica utilizada

<details>
  <summary>Clique para mostrar conteúdo</summary>
  
- Utilização do FIGMA para criação das telas e fluxo de dados
- Separação por funcionalidade(features)
- Utilização do padrão MVC
- Modularização
- Gerenciamento de estado
- Service Pattern

</details>



## Desenvolvimento

<details>
  <summary>Clique para mostrar conteúdo</summary>
  
### Passo 1: Elaboração do Design de Interfaces
Emprego da ferramenta FIGMA para concepção e desenvolvimento das telas, bem como para a estruturação do fluxo de dados

Utilização com 4 telas:

- SplashPage – Página de Carregamento Inicial
- OnboardingPage – Página de Introdução
- SignUpPage – Página de Cadastro
- SignInPage – Página de Login

### Passo 2: Desenvolvimento do Projeto Flutter
Utilização do nome previamente estabelecido no passo anterior para o projeto.


### Passo 3: Modularização por Funcionalidade

Início da segmentação por funcionalidade.
Cada tela apresenta um comportamento específico, que será tratado de forma separada por meio da criação do diretório "features".
<div align="center">
<img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/5252a9b6-2792-4eb1-8f21-c57800393724" style="width:20%">
</div>


### Passo 4: Implementação dos Arquivos Baseados em MVC
Desenvolvimento dos arquivos seguindo a arquitetura MVC (Modelo, Visão, Controlador):

- nomedatela_page.dart = Visão
- nomedatela_controller.dart = Controlador (caso necessário para a tela)
- nomedatela_model.dart = Modelo (caso necessário para a tela)

<div align="center">
<img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/6904c5d9-76f9-4cd0-9efd-66e9aeb4afdb" style="width:20%">
</div>


### Passo 4: Estabelecimento das Rotas
Desenvolvimento das rotas por meio da utilização de uma constante de rotas.

<div align="center">
<img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/b299dadf-b1c3-4ee8-8316-f44d982a2377" style="width:20%">
   <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/dd0e7fe6-53ce-47ec-a0f0-f6ee894cacfb" style="width:40%">
</div>

### Passo 5: Definição de Constantes de Estilo
Com base no estilo elaborado na ferramenta de design, determinar as constantes de coloração que serão empregadas no projeto.
<div align="center">
   <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/07254923-8d45-43c9-8831-deaf59443eed" style="width:40%">
</div>



</details>


## Modularização

<details>
  <summary>Clique para mostrar conteúdo</summary>
  
Criação de um diretório que conterá todos os componentes reutilizáveis na aplicação.

Componentes:
- Custom_text_form_field: Um componente que cria campos de formulário.
- Password_form_field: Um componente que reutiliza Custom_text_form_field, fornecendo propriedades adicionais específicas para um campo de senha, como o comportamento de exibir a senha ao clicar no ícone.
- Multi_text_button: Texto pequeno que funciona como um botão abaixo do botão principal (primary button) e redireciona para uma nova tela.
- Primary_button: Botão principal usado nas telas.
- Custom_text_title: Texto grande principal usado nas telas.
- Custom_bottom_sheet: Modal personalizado.

<div align="center">
   <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/b139a73e-5af8-4712-b558-16ab69cf0007" style="width:45%">
</div>


</details>





## Utils

<details>
  <summary>Clique para mostrar conteúdo</summary>
  
<div align="center">
   <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/a0f08258-00a0-426f-a375-92ca9d931f10" style="width:45%">
</div>

Funções Genéricas de Aplicação:

- Uppercase_text_formatter: Utilizada para formatar texto em caixa alta.
- Validator: Utilizada na validação dos campos de formulário de cadastro.

Validação dos Campos de Formulário:

- Form: Representa o formulário.
- FormState: Representa o estado do formulário Form.
Através de _formKey.currentState, podemos acessar o estado do formulário e através de _formKey.currentState?.validate(), podemos realizar as validações.

Ao executar _formKey.currentState?.validate(), que pode retornar nulo como algo válido, ele percorrerá os campos de CustomTextFormField e PasswordFormField, onde passamos o validador como parâmetros, e realizará a verificação. 


<div align="center">
   <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/b65a6dc8-bccd-4f70-bbc2-de0f06614cfe" style="width:45%">
</div>

Se ele retornar nulo, significa que passou por todos os testes impostos no validador. Se retornar algo diferente de nulo, indica que houve algum erro de validação e retornará uma String correspondente ao erro encontrado.

</details>




## Gerenciamento de Estado

<details>
  <summary>Clique para mostrar conteúdo</summary>
  
Definir os estados (loading, success, error, initial) da nossa tela, onde o controlador (controller) será responsável pelo gerenciamento desses estados.

<div align="center">
   <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/b828d653-9b6e-487a-a5af-a41bb1bcfcd2" style="width:45%">
</div>


### Funcionamento do Controller:

Inicialmente, declaramos o controlador (controller) em nossa tela, passando um objeto do tipo SignUpController(MockAuthService()):

<div align="center">
   <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/3881321d-66cc-499a-8b5a-c48f33384427" style="width:45%">
</div>



No construtor de SignUpController, ele recebe um AuthService que é uma interface:

<div align="center">
   <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/65412a15-a3a8-4f52-8cf9-c107612941c3" style="width:45%">
</div>



MockAuthService implementa um AuthService na construção da sua classe, sendo uma interface. MockAuthService também se torna uma classe do tipo AuthService, pois a interface obriga a classe que a implementa a possuir todas as suas funções. Dessa forma, é possível passar MockAuthService como um AuthService na construção de SignUpController.


### Lógica do Controller:
Adicionamos um listener para o controlador que irá monitorar mudanças de estado:


<div align="center">
   <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/c168d4e6-54d0-4edc-b813-c3021b770d38" style="width:60%">
</div>




Quando o formulário for válido, chamamos a função signUp, que passará os valores dos campos como parâmetros

<div align="center">
   <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/0d0f25b7-917d-4099-b8a5-0859802d0a5d" style="width:60%">
</div>

Função signUp que é uma função assíncrona

<div align="center">
   <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/558b9a4c-4e95-4c1d-9dd7-f341a1cccb96" style="width:60%">
</div>



A primeira função chamada é a changeState, que é responsável por alterar o estado da aplicação, passando um objeto SignUpLoadingState:

<div align="center">
   <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/0271c602-9e33-4246-a95a-0f42f89b56c6" style="width:60%">
</div>



changeState altera o valor de _state, que é uma propriedade privada, e chama a função notifyListeners, que notificará nosso _controller que está ouvindo:

<div align="center">
   <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/8a81d9b4-582c-40eb-a320-2faf8842e144" style="width:60%">
</div>


Ao verificar uma mudança de estado no _controller, a função é chamada e o estado do controlador é acessado através de _controller.state, que é um getter para acessar a propriedade privada _state de _controller.

<div align="center">
   <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/d516e4df-3ffa-4c42-8855-4bc74b8137a9" style="width:60%">
</div>

</details>




## Service Pattern

<details>
  <summary>Clique para mostrar conteúdo</summary>
  
A seguir, temos a função _service.signUp que simula o cenário de um cadastro. Como passamos MockAuthService() por meio de injeção de dependência, a função signUp de AuthService foi sobrescrita pela função signUp de MockAuthService. Essa substituição poderia ser feita por uma FireBaseAuthService, CognitoAuthService, ou outra API.



<div align="center">
   <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/2b4ae4a1-8500-49a4-8e98-f8a337409840" style="width:60%">
</div>


AuthService é uma interface que exige que as classes que a implementam tenham métodos signUp e signIn.

<div align="center">
   <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/fa0a9be8-ba5c-4ffb-b5cc-e42fe7abf793" style="width:45%">
</div>

Classe que implementa a interface AuthService e simula um cadastro de usuário e login, sobrescrevendo os métodos de AuthService.

<div align="center">
   <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/4ba743a9-d37d-4394-adc2-9c15366a5cb0" style="width:45%">
</div>


</details>




## Model

<details>
  <summary>Clique para mostrar conteúdo</summary>
  
O modelo é uma classe que representa os dados e comportamentos de um usuário na aplicação. Ele organiza informações como nome, e-mail e senha, além de métodos para operações específicas. Essa abstração separa a lógica de negócios e a interface do usuário, garantindo consistência e segurança nos dados.

<div align="center">
   <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/e6eeba61-76f6-413c-97a0-ef78e28a7690" style="width:45%">
</div>


</details>





























