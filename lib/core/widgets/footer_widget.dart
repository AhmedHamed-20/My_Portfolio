import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(color: context.theme.dividerColor),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '© 2023 Ahmed Mohamed Portfolio.',
              style: context.theme.textTheme.labelSmall,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.facebook),
            ),
          ],
        ),
      ],
    );
  }
}
