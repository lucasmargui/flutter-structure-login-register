<H1 align="center">Flutter Login/Registration</H1>
<p align="center">🚀 Development of a login/registration structure for future references</p>

## Resources Used
Flutter 3.3.5





## SPLASH PAGE

The layout consists of two elements centered vertically on the screen, arranged in a column. One of these elements is a logo, while the other is a loading circle. The screen has a background with a gradient color.

Expected behavior: After a predefined time interval, the screen should be redirected to the OnboardingPage.

<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/625864e4-fcc7-448b-8e93-54d864d1afb6" style="width:45%">
</div>


## ONBOARDING PAGE



Main Widgets:
The layout includes 4 main elements arranged in a column:

- An image
- A large text
- One button
- A small text

Expected behavior:

- When pressing the button, you will be redirected to the SIGN IN screen.
- By pressing the small text, you will be redirected to the SIGN UP screen.



<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/40815241-a826-4e96-8aa7-f563089d0606" style="width:45%">
</div>


## SIGN UP PAGE

Main Widgets:
The layout contains 8 main elements arranged in a column:

- Large text: Uses the same text present in onboarding, and can be modularized as CustomTitleText.
- An image.
- 4 form fields: Being form fields, they can be modularized.
- One button: Uses the same button style present in onboarding, and can be modularized as PrimaryButton.
- Small text: Uses the same text style present in onboarding, and can be modularized.

Expected behavior:

- When you press "Sign Up", a validation will be performed on the fields before proceeding with the data flow.
- When you press on the small text, you will be redirected to the login screen.

<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/5748b092-806a-42aa-abbc-a7b3b8604d7b" style="width:45%">
</div>


## SIGN IN PAGE
Main Widgets:
The layout contains 8 main elements arranged in a column:

- Large text: Uses the same text present in onboarding, and can be modularized as CustomTitleText.
- An image.
- 2 form fields: Being form fields, they can be modularized.
- One button: Uses the same button style present in onboarding, and can be modularized as PrimaryButton.
- Small text: Uses the same text style present in onboarding, and can be modularized.

Expected behavior:

- When you press "Sign In", a validation will be performed on the fields before proceeding with the data flow.
- When you press on the small text, you will be redirected to the registration screen.




<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/1c5887ea-2651-4b52-a353-397fae12f89b" style="width:45%">

</div>


## Logic used

<details>
 <summary>Click to show content</summary>

- Use of FIGMA to create screens and data flow
- Separation by functionality (features)
- Use of the MVC pattern
- Modularization
- State management
- Service Pattern

</details>


## Development

<details>
 <summary>Click to show content</summary>

### Step 1: Elaboration of Interface Design
Use of the FIGMA tool for designing and developing screens, as well as structuring the data flow

Use with 4 screens:

- SplashPage – Initial Loading Page
- OnboardingPage – Introduction Page
- SignUpPage – Registration Page
- SignInPage – Login Page

### Step 2: Flutter Project Development
Use of the name previously established in the previous step for the project.


### Step 3: Modularization by Functionality

Start of segmentation by functionality.
Each screen presents a specific behavior, which will be treated separately through the creation of the "features" directory.
<div align="center">
<img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/5252a9b6-2792-4eb1-8f21-c57800393724" style="width:40%">
</div>


### Step 4: Implementation of MVC-Based Files
Development of files following the MVC architecture (Model, View, Controller):

- screenname_page.dart = Vision
- screenname_controller.dart = Controller (if necessary for the screen)
- screenname_model.dart = Model (if necessary for the screen)

<div align="center">
<img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/6904c5d9-76f9-4cd0-9efd-66e9aeb4afdb" style="width:40%">
</div>


### Step 4: Establishing Routes
Development of routes through the use of a route constant.

<div align="center">
<img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/b299dadf-b1c3-4ee8-8316-f44d982a2377" style="width:45%">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/dd0e7fe6-53ce-47ec-a0f0-f6ee894cacfb" style="width:45%">
</div>

### Step 5: Defining Style Constants
Based on the style created in the design tool, determine the coloring constants that will be used in the project.
<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/07254923-8d45-43c9-8831-deaf59443eed" style="width:80%">
</div>



</details>


## Modularization

<details>
 <summary>Click to show content</summary>

Creation of a directory that will contain all reusable components in the application.

Components:
- Custom_text_form_field: A component that creates form fields.
- Password_form_field: A component that reuses Custom_text_form_field, providing additional properties specific to a password field, such as the behavior of displaying the password when clicking the icon.
- Multi_text_button: Small text that works as a button below the primary button and redirects to a new screen.
- Primary_button: Main button used on screens.
- Custom_text_title: Main large text used on screens.
- Custom_bottom_sheet: Custom modal.

<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/b139a73e-5af8-4712-b558-16ab69cf0007" style="width:80%">
</div>


</details>





## Utils

<details>
 <summary>Click to show content</summary>

<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/a0f08258-00a0-426f-a375-92ca9d931f10" style="width:80%">
</div>

Application Generic Functions:

- Uppercase_text_formatter: Used to format text in uppercase.
- Validator: Used to validate registration form fields.

Validation of Form Fields:

- Form: Represents the form.
- FormState: Represents the state of the Form form.
Through _formKey.currentState, we can access the form's state and through _formKey.currentState?.validate(), we can perform validations.

When executing _formKey.currentState?.validate(), which can return null as something valid, it will go through the CustomTextFormField and PasswordFormField fields, where we passed the validator as parameters, and perform the check.


<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/b65a6dc8-bccd-4f70-bbc2-de0f06614cfe" style="width:80%">
</div>

If it returns null, it means that it passed all the tests imposed on the validator. If it returns something other than null, it indicates that there was a validation error and will return a String corresponding to the error found.

</details>



## State Management

<details>
 <summary>Click to show content</summary>

Define the states (loading, success, error, initial) of our screen, where the controller will be responsible for managing these states.

<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/b828d653-9b6e-487a-a5af-a41bb1bcfcd2" style="width:80%">
</div>


### Controller Operation:

Initially, we declare the controller on our screen, passing an object of type SignUpController(MockAuthService()):

<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/3881321d-66cc-499a-8b5a-c48f33384427" style="width:80%">
</div>



In the SignUpController constructor, it receives an AuthService which is an interface:

<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/65412a15-a3a8-4f52-8cf9-c107612941c3" style="width:80%">
</div>



MockAuthService implements an AuthService in the construction of its class, being an interface. MockAuthService also becomes a class of type AuthService, as the interface forces the class that implements it to have all its functions. This way, it is possible to pass MockAuthService as an AuthService in the construction of SignUpController.


### Controller Logic:
We add a listener to the controller that will monitor state changes:


<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/c168d4e6-54d0-4edc-b813-c3021b770d38" style="width:80%">
</div>




When the form is valid, we call the signUp function, which will pass the field values ​​as parameters

<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/0d0f25b7-917d-4099-b8a5-0859802d0a5d" style="width:80%">
</div>

signUp function which is an asynchronous function

<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/558b9a4c-4e95-4c1d-9dd7-f341a1cccb96" style="width:80%">
</div>



The first function called is changeState, which is responsible for changing the state of the application, passing a SignUpLoadingState object:

<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/0271c602-9e33-4246-a95a-0f42f89b56c6" style="width:80%">
</div>



changeState changes the value of _state, which is a private property, and calls the notifyListeners function, which will notify our listening _controller:

<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/8a81d9b4-582c-40eb-a320-2faf8842e144" style="width:80%">
</div>


When checking for a state change in the _controller, the function is called and the controller's state is accessed through _controller.state, which is a getter to access the private _state property of _controller.

<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/d516e4df-3ffa-4c42-8855-4bc74b8137a9" style="width:80%">
</div>

</details>

## Service Pattern

<details>
 <summary>Click to show content</summary>

Next, we have the _service.signUp function that simulates the registration scenario. Because we passed MockAuthService() through dependency injection, the signUp function of AuthService was overwritten by the signUp function of MockAuthService. This replacement could be done by a FireBaseAuthService, CognitoAuthService, or another API.



<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/2b4ae4a1-8500-49a4-8e98-f8a337409840" style="width:80%">
</div>


AuthService is an interface that requires classes that implement it to have signUp and signIn methods.

<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/fa0a9be8-ba5c-4ffb-b5cc-e42fe7abf793" style="width:80%">
</div>

Class that implements the AuthService interface and simulates user registration and login, overriding the AuthService methods.

<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/4ba743a9-d37d-4394-adc2-9c15366a5cb0" style="width:80%">
</div>


</details>




## Model

<details>
 <summary>Click to show content</summary>

The model is a class that represents the data and behaviors of a user in the application. It organizes information such as name, email and password, as well as methods for specific operations. This abstraction separates business logic and user interface, ensuring data consistency and security.

<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Login_Cadastro/assets/157809964/e6eeba61-76f6-413c-97a0-ef78e28a7690" style="width:80%">
</div>


</details>






















