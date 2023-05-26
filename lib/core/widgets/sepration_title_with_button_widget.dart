import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';

class SeprationTitleWithButtonWidget extends StatelessWidget {
  const SeprationTitleWithButtonWidget(
      {super.key,
      required this.title,
      required this.buttonText,
      required this.onPressed});
  final String title;
  final String buttonText;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: context.theme.textTheme.titleMedium,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: context.theme.textTheme.labelSmall,
          ),
        ),
      ],
    );
  }
}
