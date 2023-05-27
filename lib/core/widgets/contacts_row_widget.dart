import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';

class ContactsRowWidget extends StatelessWidget {
  const ContactsRowWidget(
      {super.key,
      required this.title,
      required this.value,
      required this.onPressedOnValue,
      required this.suffixIcon});
  final String title;
  final String value;
  final VoidCallback onPressedOnValue;
  final IconData suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(suffixIcon),
        SizedBox(
          width: 3.w,
        ),
        Text(
          title,
          style: context.theme.textTheme.labelSmall,
        ),
        SizedBox(
          width: 12.w,
        ),
        TextButton(
          onPressed: onPressedOnValue,
          child: Text(
            value,
            style: context.theme.textTheme.labelSmall,
          ),
        ),
      ],
    );
  }
}
