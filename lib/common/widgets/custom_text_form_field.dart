// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_style.dart';

class CustomTextFormField extends StatefulWidget {
  // Declaração de parâmetros opcionais para personalizar o TextFormField
  final EdgeInsetsGeometry? padding;
  final String? hintText;
  final String? labelText;
  final TextCapitalization? textCapitalization;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? maxLength;
  final TextInputAction? textInputAction;
  final Widget? suffixIcon;
  final bool? obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;
  final String? helperText;

  // Construtor do CustomTextFormField
  const CustomTextFormField({
    Key? key,
    this.padding,
    this.hintText,
    this.labelText,
    this.textCapitalization,
    this.controller,
    this.keyboardType,
    this.maxLength,
    this.textInputAction,
    this.suffixIcon,
    this.obscureText,
    this.inputFormatters,
    this.validator,
    this.helperText,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final defaultBorder = const OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.bluedarkOne));

  String? _helperText;

  @override
  void initState() {
    // Inicialização do estado do widget
    super.initState();
    _helperText = widget.helperText;
  }

  @override
  Widget build(BuildContext context) {
    // Construção do TextFormField personalizado
    return Padding(
      // Define o preenchimento do widget usando o valor passado ou um valor padrão
      padding:
          widget.padding ?? EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: TextFormField(
        onChanged: (value) {
          // Atualiza o texto de ajuda (_helperText) com base no valor digitado
          if (value.length == 1) {
            setState(() {
              _helperText = null;
            });
          } else if (value.isEmpty) {
            setState(() {
              _helperText = widget.helperText;
            });
          }
        },
        validator: widget.validator, // Validação do campo de texto
        style: AppTextStyles.inputText
            .copyWith(color: AppColors.darkgrey), // Estilo do texto de entrada
        inputFormatters: widget.inputFormatters, // Formatação de entrada
        obscureText:
            widget.obscureText ?? false, // Define se o texto é obscuro (senha)
        textInputAction: widget
            .textInputAction, // Ação do teclado ao pressionar o botão "concluído"
        maxLength: widget.maxLength, // Comprimento máximo do texto
        keyboardType: widget.keyboardType, // Tipo de teclado exibido
        controller: widget.controller, // Controlador do campo de texto
        textCapitalization: widget.textCapitalization ??
            TextCapitalization.none, // Capitalização do texto
        decoration: InputDecoration(
          errorMaxLines: 3,
          helperText:
              _helperText, // Texto de ajuda exibido abaixo do campo de texto
          helperMaxLines: 3,
          suffixIcon:
              widget.suffixIcon, // Ícone exibido à direita do campo de texto
          hintText: widget.hintText, // Texto exibido como dica
          hintStyle: AppTextStyles.inputText
              .copyWith(color: AppColors.lightgrey), // Estilo da dica
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: widget.labelText?.toUpperCase(), // Texto do label
          labelStyle: AppTextStyles.inputLabelText
              .copyWith(color: AppColors.bluedarkOne), // Estilo do label
          border: defaultBorder, // Borda padrão
          focusedBorder: defaultBorder.copyWith(
              borderSide: BorderSide(
                  color: AppColors.grey)), // Borda quando o campo está focado
          errorBorder: defaultBorder, // Borda quando há erro
          enabledBorder: defaultBorder, // Borda quando o campo está habilitado
          disabledBorder:
              defaultBorder, // Borda quando o campo está desabilitado
        ),
      ),
    );
  }
}
