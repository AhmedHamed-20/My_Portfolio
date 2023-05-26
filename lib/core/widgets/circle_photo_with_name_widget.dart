import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';

import '../constants/app_radius.dart';

class CirclePhotoWithNameWidget extends StatelessWidget {
  const CirclePhotoWithNameWidget(
      {super.key, required this.name, required this.photoUrl});
  final String name;
  final String photoUrl;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: AppRadius.extraLarge,
          backgroundImage: NetworkImage(
            photoUrl,
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          name,
          style: context.theme.textTheme.titleMedium,
        ),
      ],
    );
  }
}
