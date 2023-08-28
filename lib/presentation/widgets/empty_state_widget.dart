import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyStateWidget extends StatelessWidget {
  final String assetUrl;

  const EmptyStateWidget({super.key, required this.assetUrl});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(assetUrl),
    );
  }
}
