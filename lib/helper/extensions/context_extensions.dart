import 'package:flutter/material.dart';

import '../constants/dimensions_resource.dart';

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

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  double responsiveTextSize(double textSize) {
    if (width < DimensionsResource.DEVICE_WIDTH) {
      return width * (textSize / DimensionsResource.DEVICE_WIDTH);
    } else {
      return textSize;
    }
  }

  double responsiveHeight(double pixel) {
    return height * (pixel / DimensionsResource.DEVICE_HEIGHT);
  }

  double responsiveWidth(double pixel) {
    return width * (pixel / DimensionsResource.DEVICE_WIDTH);
  }
}
