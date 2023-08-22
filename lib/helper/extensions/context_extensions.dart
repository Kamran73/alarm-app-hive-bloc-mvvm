import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showTextSnackBar(
      {required String content}) {
    return ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(content),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
