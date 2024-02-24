// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, prefer_const_literals_to_create_immutablesm, sort_child_properties_last

import 'package:flutter/material.dart';
import '../../common/widgets/custom_text_form_field.dart';

class PasswordFormField extends StatefulWidget {
  final TextEditingController? controller; // Controlador para o campo de senha
  final EdgeInsetsGeometry? padding; // Preenchimento do campo de senha
  final String? hintText; // Texto de dica para o campo de senha
  final String? labelText; // Texto do label para o campo de senha
  final FormFieldValidator<String>?
      validator; // Validador para o campo de senha
  final String? helperText; // Texto de ajuda para o campo de senha

  // Construtor do PasswordFormField
  const PasswordFormField({
    Key? key,
    this.controller,
    this.padding,
    this.hintText,
    this.labelText,
    this.validator,
    this.helperText,
  }) : super(key: key);

  @override
  // Cria o estado associado ao PasswordFormField
  _PasswordFormFieldState createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool isHidden = true; // Variável para controlar a visibilidade da senha

  @override
  Widget build(BuildContext context) {
    // Retorna um campo de texto personalizado para senha (CustomTextFormField)
    return CustomTextFormField(
      helperText: widget.helperText, // Texto de ajuda
      validator: widget.validator, // Validador
      controller: widget.controller, // Controlador
      padding: widget.padding, // Preenchimento
      obscureText: isHidden, // Define se a senha está oculta
      hintText: widget.hintText, // Texto de dica
      labelText: widget.labelText, // Texto do label
      suffixIcon: InkWell(
        borderRadius: BorderRadius.circular(23), // Borda do ícone
        child: Icon(
          isHidden
              ? Icons.visibility
              : Icons.visibility_off, // Ícone de visibilidade
        ),
        onTap: () {
          setState(() {
            isHidden = !isHidden; // Alterna a visibilidade da senha
          });
        },
      ),
    );
  }
}
