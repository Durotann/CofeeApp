// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cofee_app/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.isActive,
    this.isLoading,
  });
  final Function()? onPressed;
  final String title;
  final bool isActive;
  final bool? isLoading;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 52,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          // overlayColor: const WidgetStatePropertyAll(Colors.transparent),
          splashFactory: NoSplash.splashFactory,
          shadowColor: const WidgetStatePropertyAll(
            Colors.transparent,
          ),
          elevation: const WidgetStatePropertyAll(0),
          surfaceTintColor: const WidgetStatePropertyAll(Colors.black),
          backgroundColor: widget.isActive
              ? WidgetStatePropertyAll(theme.colorScheme.primary)
              : WidgetStatePropertyAll(
                  theme.disabledColor,
                ),
        ),
        onPressed: widget.onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [checkStatusLoading()],
        ),
      ),
    );
  }

  Widget checkStatusLoading() {
    switch (widget.isLoading) {
      case null:
        if (isLoading) {
          return const CircularProgressIndicator(
            color: Colors.white,
            strokeWidth: 1,
          );
        } else {
          return Text(
            widget.title,
            style: theme.textTheme.displayMedium!.copyWith(
                color: widget.isActive
                    ? Colors.white
                    : const Color.fromRGBO(245, 248, 250, 1)),
          );
        }
      case true:
        return const CircularProgressIndicator(
          color: Colors.white,
          strokeWidth: 1,
        );
      case false:
        return Text(
          widget.title,
          style: theme.primaryTextTheme.labelMedium!.copyWith(
              color: widget.isActive
                  ? Colors.white
                  : const Color.fromRGBO(245, 248, 250, 1)),
        );
    }
  }
}
