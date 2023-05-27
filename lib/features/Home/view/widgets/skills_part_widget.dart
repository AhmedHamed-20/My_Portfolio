import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/core/constants/app_padding.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';
import 'package:my_portfolio/core/routes/app_routes_names.dart';
import 'package:my_portfolio/core/widgets/skills_title_widget.dart';

import '../../../../core/widgets/sepration_title_with_button_widget.dart';

class SkillsPartWidget extends StatelessWidget {
  const SkillsPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SeprationTitleWithButtonWidget(
          title: 'Skills',
          buttonText: 'See all',
          onPressed: () {
            context.push(AppRoutesNames.skills);
          },
        ),
        Divider(
          color: context.theme.dividerColor,
          thickness: 1,
        ),
        SizedBox(height: 16.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            3,
            (index) => const Padding(
              padding: EdgeInsets.symmetric(vertical: AppPadding.p10),
              child: SkillsTitleWidget(
                title: 'Dart',
              ),
            ),
          ),
        )
      ],
    );
  }
}
