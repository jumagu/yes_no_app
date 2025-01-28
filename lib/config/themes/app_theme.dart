import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF451265);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int baseColor;

  AppTheme({this.baseColor = 0})
      : assert(
          baseColor >= 0 && baseColor <= _colorThemes.length - 1,
          'baseColor must be a number between 0 and ${_colorThemes.length - 1}'
        );

  ThemeData theme() {
    return ThemeData(
      // brightness: Brightness.dark,
      // useMaterial3: true, // Not necessary
      colorSchemeSeed: _colorThemes[baseColor],
    );
  }
}
