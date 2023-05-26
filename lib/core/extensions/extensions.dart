import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get appWidth => MediaQuery.of(this).size.width;
  double get appHeight => MediaQuery.of(this).size.height;
}

extension NavigatorExtension on BuildContext {
  void pushNamed(String routeName) {
    Navigator.of(this).pushNamed(routeName);
  }

  void pushReplacementNamed(String routeName) {
    Navigator.of(this).pushReplacementNamed(routeName);
  }

  void pushNamedAndRemoveUntil(String routeName) {
    Navigator.of(this).pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pop() {
    Navigator.of(this).pop();
  }
}
