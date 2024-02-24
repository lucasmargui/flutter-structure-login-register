import 'package:flutter/services.dart';

class UpperCaseTextInputFormatter extends TextInputFormatter {
  @override // Sobrescrevendo o método formatEditUpdate da classe pai
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Retorna um novo valor de edição onde o texto foi convertido para maiúsculas
    return TextEditingValue(
      text: newValue.text.toUpperCase(), // Convertendo o texto para maiúsculas
      selection: newValue.selection, // Mantendo a seleção do texto inalterada
    );
  }
}
