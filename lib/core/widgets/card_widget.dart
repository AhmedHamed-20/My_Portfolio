import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_elevation.dart';
import 'package:my_portfolio/core/constants/app_padding.dart';
import 'package:my_portfolio/core/constants/app_radius.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.trailing,
      this.endDescriptionWidget});
  final String title;
  final String description;
  final Widget trailing;
  final Widget? endDescriptionWidget;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(AppPadding.p10),
      color: context.theme.cardColor,
      elevation: AppElevation.elevation1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppRadius.small,
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(AppPadding.p10),
        title: Text(
          title,
          style: context.theme.textTheme.titleSmall,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              description,
              style: context.theme.textTheme.labelSmall,
            ),
            if (endDescriptionWidget != null) endDescriptionWidget!,
          ],
        ),
        trailing: trailing,
      ),
    );
  }
}
