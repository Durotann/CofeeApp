// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:cofee_app/theme/theme.dart';

class TextWithBackground extends StatelessWidget {
  const TextWithBackground({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          height: 30,
          width: MediaQuery.of(context).size.width * 0.48,
          color: theme.colorScheme.secondary,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text(
            title,
            style: theme.textTheme.bodyLarge?.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
