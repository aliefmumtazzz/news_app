import 'package:flutter/material.dart';

extension NavigatorUtil on BuildContext {
  void goTo(Widget page) {
    Navigator.push(
      this,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  void pop() => Navigator.pop(this);
}
