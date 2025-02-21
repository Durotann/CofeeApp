// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:cofee_app/theme/theme.dart';

class BoxIconWidget extends StatelessWidget {
  const BoxIconWidget({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 44,
      decoration: BoxDecoration(
        color: theme.colorScheme.onSecondary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Image.asset(image, scale: 4),
      ),
    );
  }
}
