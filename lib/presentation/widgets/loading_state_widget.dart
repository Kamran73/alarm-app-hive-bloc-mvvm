import 'package:flutter/material.dart';
import 'package:task_10/helper/constants/colors_resource.dart';

class LoadingStateWidget extends StatelessWidget {
  const LoadingStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: ColorsResource.WHITE_CLR,
      ),
    );
  }
}
