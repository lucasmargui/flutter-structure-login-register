<H1 align="center">Flutter Login/Cadastro</H1>
<p align="center">🚀 Desenvolvimento de uma estrutura de login/cadastro para referências futuras</p>

## Recursos Utilizados
Flutter 3.3.5

## Lógica utilizada
- Utilização do FIGMA para criação das telas e fluxo de dados
- Separação por funcionalidade(features)
- Utilização do padrão MVC
- Modularização
- Gerenciamento de estado
- Service Pattern

## Desenvolvimento

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


### SIGN IN PAGE
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






