// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:cofee_app/theme/theme.dart';

class FilterCard extends StatelessWidget {
  const FilterCard({
    super.key,
    required this.title,
    required this.isSelected,
  });
  final String title;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected
            ? theme.colorScheme.primary
            : theme.colorScheme.onSecondary,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Center(
          child: Text(
            title,
            style: theme.textTheme.bodySmall
                ?.copyWith(color: isSelected ? Colors.white : Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
