import 'package:flutter/material.dart';

const Color _colorPersonalizado =
    Color(0xFF4F9149); // Color personalizado en hexadecimal

const List<Color> _colorTemas = [
  _colorPersonalizado, // Posición 0
  Colors.blue, // Posición 1
  Colors.teal, // Posición 2
  Colors.green, // Posición 3
  Colors.yellow, // Posición 4
  Colors.orange, // Posición 5
  Colors.pink, // Posición 6
];

class AppTema {
  final int colorSeleccionado; // Añadido para seleccionar el color

  AppTema(
      {this.colorSeleccionado =
          0}); // Constructor para recibir el color seleccionado

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTemas[
          colorSeleccionado % _colorTemas.length], // Uso del color seleccionado
      // brightness: Brightness.dark // Opcional para tema oscuro
    );
  }
}
