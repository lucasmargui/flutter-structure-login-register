import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // Construtor privado para impedir a instanciação da classe pois só queremos acessar suas propriedades

  // Definição de cores estáticas utilizadas no aplicativo
  static const Color bluedarkOne =
      Color.fromARGB(255, 115, 38, 240); // Cor azul escura 1
  static const Color bluedarkTwo =
      Color.fromARGB(255, 63, 20, 131); // Cor azul escura 2
  static const Color bluedarkThree =
      Color.fromARGB(255, 0, 0, 0); // Cor azul escura 3
  static const Color white = Colors.white; // Cor branca
  static const Color iceWhite =
      Color.fromARGB(255, 239, 240, 247); // Cor branca gelo
  static const Color grey = Colors.grey; // Cor cinza
  static const Color lightgrey =
      Color.fromARGB(255, 202, 202, 202); // Cor cinza claro
  static const Color darkgrey =
      Color.fromARGB(255, 90, 90, 90); // Cor cinza escuro

  // Definição de gradientes de cores utilizados no aplicativo
  static const List<Color> purpleGradient = [
    Color.fromARGB(255, 115, 38, 240),
    Color.fromARGB(255, 63, 20, 131)
  ]; // Gradiente de cores azul escuro
  static const List<Color> greyDarkGradient = [
    Color.fromARGB(246, 207, 207, 207),
    Color.fromARGB(246, 207, 207, 207)
  ]; // Gradiente de cores cinza escuro
}
