import 'package:flutter/cupertino.dart';

class DimensionsResource {
  DimensionsResource._();

  // pixels
  static const double PIXEL_10 = 10;
  static const double PIXEL_20 = 20;

  //Edge insets
  /// alarm container edge insets dimensions
  static const EdgeInsets ALARM_CONTAINER_MARGIN = EdgeInsets.symmetric(
    vertical: PIXEL_10,
    horizontal: PIXEL_20,
  );
  static const EdgeInsets ALARM_CONTAINER_PADDING =
      EdgeInsets.symmetric(vertical: PIXEL_10);

  // Icon sizes
  static const double ALARM_CONTAINER_LEADING_ICON_SIZE = 28;

  // device pixels on which app looks perfect
  static const double DEVICE_WIDTH = 392;
  static const double DEVICE_HEIGHT = 856;
}
