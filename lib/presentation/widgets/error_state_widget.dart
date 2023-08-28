import 'package:flutter/material.dart';

import 'custom_text.dart';

class ErrorStateWidget extends StatelessWidget {
  final String errorMessage;

  const ErrorStateWidget({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        text: errorMessage,
      ),
    );
  }
}
