import 'package:cofee_app/theme/theme.dart';
import 'package:flutter/material.dart';

class DropDownText extends StatelessWidget {
  const DropDownText({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      underline: SizedBox(),
      dropdownColor: Colors.white,
      style: TextStyle(color: Colors.grey),
      items: [
        DropdownMenuItem(
          child: Text(
            'Bilzen, Tanjungbalai',
            style: theme.textTheme.bodySmall
                ?.copyWith(color: theme.colorScheme.onSurface),
          ),
        ),
      ],
      onChanged: (value) {},
    );
  }
}
