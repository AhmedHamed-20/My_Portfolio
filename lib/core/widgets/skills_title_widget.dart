import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';

class SkillsTitleWidget extends StatelessWidget {
  const SkillsTitleWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.theme.textTheme.labelSmall,
        ),
        Divider(
          color: context.theme.dividerColor,
          thickness: 1,
        ),
      ],
    );
  }
}
