// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:cofee_app/theme/theme.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    required this.action,
  });
  final String title;
  final bool action;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: Text(
        "Detail",
        style: theme.textTheme.displayMedium?.copyWith(color: Colors.black),
      ),
      titleSpacing: 0,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Image.asset(
          "images/arrow_left.png",
          scale: 4,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 24.0),
          child: SvgPicture.asset("images/hearth.svg"),
        )
      ],
    );
  }
}
