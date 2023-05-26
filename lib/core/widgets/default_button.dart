import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
      {super.key, required this.onPressed, required this.buttonText});
  final VoidCallback onPressed;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(context.theme.colorScheme.primary),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      child: Text(
        buttonText,
        style: context.theme.textTheme.labelSmall
            ?.copyWith(color: context.theme.colorScheme.background),
      ),
    );
  }
}
