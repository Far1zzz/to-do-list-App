import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  ThemeData get _theme => Theme.of(this);
  TextTheme get textTheme => _theme.textTheme;
  ColorScheme get colorSchame => _theme.colorScheme;
  Size get deviceSize => MediaQuery.sizeOf(this);
}
