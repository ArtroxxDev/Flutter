import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF052ED3);

const List<Color> _colorThemes = [
  _customColor,
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
  Colors.purple,
  Colors.deepPurple,
  Colors.indigo,
  Colors.teal,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length,
            'colors must be between 0 and ${_colorThemes.length}');
  ThemeData theme() {
    return ThemeData(colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
