// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:cofee_app/theme/theme.dart';

class IconBox extends StatelessWidget {
  const IconBox({
    super.key,
    required this.imageString,
  });
  final String imageString;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Image.asset(imageString),
      ),
    );
  }
}
